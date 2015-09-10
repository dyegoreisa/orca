package com.biavan.orca.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biavan.orca.domain.TipoOperacao;
import com.biavan.orca.model.Lancamento;
import com.biavan.orca.service.LancamentoService;

@Controller
@RequestMapping("/lancamento")
public class LancamentoController {
	
	private LancamentoService lancamentoService;
	
	@Autowired(required = true)
	@Qualifier(value = "lancamentoService")
	public void setLancamentoService(LancamentoService lancamentoService) {
		this.lancamentoService = lancamentoService;
	}

//	@InitBinder
//	public void initBinder(WebDataBinder binder) {
//		
//		binder.registerCustomEditor(Marca.class, "marca", new PropertyEditorSupport() {
//			@Override
//	        public void setAsText(String marcaId) {
//				Marca marca = marcaService.getMarcaById(Long.valueOf(marcaId));
//				setValue(marca);
//			}
//		});
//	}	
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listaLancamentos(Model model) {

		return "lancamento/lancamento_listar";
	}

	@RequestMapping(value = "/inserir", method = RequestMethod.POST)
	public String insereLancamento(
			@Valid Lancamento lancamento
			,BindingResult result
			,Model model) {
		
		if (result.hasErrors())
		{
			return "lancamento/lancamento_atualizar";
		}
		
		if (lancamento.getId() == 0) {
			this.lancamentoService.insereLancamento(lancamento);
		} else {
			this.lancamentoService.atualizaLancamento(lancamento);
		}

		return "redirect:/lancamento/listar";
	}

	@RequestMapping(value = "/remover/{id}")
	public String removeLancamento(@PathVariable("id") long id) {
		this.lancamentoService.removeLancamento(id);
		return "redirect:/lancamento/listar";
	}

	@RequestMapping(value = "/telaAtualizar/{id}")
	public String atualizarLancamento(@PathVariable("id") long id, Model model) {
		model.addAttribute("lancamento", this.lancamentoService.getLancamentoById(id));
		return "lancamento/lancamento_atualizar";
	}
	
	@RequestMapping(value = "/telaInserir/{tipo}")
	public String telaInserirLancamento(@PathVariable("tipo") String tipo, Model model) {
		
		Lancamento lancamento = new Lancamento();

		if ("entrada".equals(tipo)) {
			lancamento.setTipoOperacao(TipoOperacao.CREDITO);
		} else {
			lancamento.setTipoOperacao(TipoOperacao.DEBITO);
		}
		
		model.addAttribute("subTitulo", "Inserir");
		model.addAttribute("sucesso", "");
		model.addAttribute("lancamento", lancamento);

		return "lancamento/lancamento_atualizar";
	}
}
