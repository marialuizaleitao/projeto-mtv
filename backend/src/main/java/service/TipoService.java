package service;

import java.util.ArrayList;

import exception.CeramicaException;
import model.entity.Tipo;
import model.repository.TipoRepository;

public class TipoService {
	private TipoRepository repository = new TipoRepository();

	public Tipo salvar(Tipo novoTipo) throws CeramicaException {
		validarTipo(novoTipo);
		return repository.salvar(novoTipo);
	}

	public boolean excluir(int id) throws CeramicaException {
		if (repository.verificarSePossuiPeca(id)) {
			throw new CeramicaException("Não é possivel excluir, alguma Peça possui este tipo! ");
		}
		return repository.excluir(id);
	}

	public boolean alterar(Tipo pecaAlterada) throws CeramicaException {
		return repository.alterar(pecaAlterada);
	}

	public Tipo consultarPorId(int id) {
		return repository.consultarPorId(id);
	}

	public ArrayList<Tipo> consultarTodasPecas() {
		return repository.consultarTodos();
	}

	private void validarTipo(Tipo tipo) throws CeramicaException {
		if (tipo == null) {
			throw new CeramicaException("Cliente não pode ser nula.");
		}
		if (tipo.getNome() == null) {
			throw new CeramicaException("Nome cliente não pode ser nulo.");

		}
	}
}