package steps;

import cucumber.api.PendingException;
import cucumber.api.java.gl.Dado;
import cucumber.api.java.gl.E;
import cucumber.api.java.it.Quando;
import definition.Processo;
import org.junit.Assert;

public class ProcessoSteps {
    @Dado("^que o usuário deseja salvar um processo$")
    public void queOUsuarioEstejaNaTelaDeAdicionarUmNovoProcesso() {
        Processo.limparCampos();
    }

    @E("^informe \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void informeComOValor(String campo, String valor) throws Throwable {
        Processo.preencherCampo(campo, valor);
    }

    @Quando("^O usuário clicar no botão salvar$")
    public void oUsuarioClicarNoBotaoSalvar() {
        Processo.salvar(true);
    }

    @Quando("^O usuário clicar no botão mostrar$")
    public void oUsuarioClicarNoBotaoMostrar() {
        Processo.carregarProcesso();
    }

    @E("^o usuário irá visualizar o campo \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oUsuárioIráVisualizarOCampoComOValor(String campo, String valorEsperado) throws Throwable {
        String valorArmazenado = Processo.getValorCampo(campo);
        Assert.assertEquals(valorArmazenado, valorEsperado);
    }

    @Quando("^O usuário alterar o campo \"([^\"]*)\" para o valor \"([^\"]*)\"$")
    public void oUsuárioAlterarOCampoParaOValor(String campo, String valor) throws Throwable {
        Processo.preencherCampo(campo, valor);
    }

    @E("^o usuário clicar no botão editar$")
    public void oUsuarioClicarNoBotaoEditar() {
        Processo.atualizar();
    }

    @Quando("^O usuário clicar no botão apagar$")
    public void oUsuarioClicarNoBotaoApagar() {
        Processo.apagar();
    }

    @Quando("^O usuário clicar no botão salvar alternativo$")
    public void oUsuárioClicarNoBotãoSalvarAlternativo() {
        Processo.salvar(false);
    }

    @E("^informa os campos do formulário de inserção$")
    public void informaOsCamposDoFormularioDeInsercao() {
        Processo.preencherCampo("vara","Osasco");
        Processo.preencherCampo("numero_processo","54321");
        Processo.preencherCampo("natureza","Civil");
        Processo.preencherCampo("partes","Teste Alan Alternativo");
        Processo.preencherCampo("urgente","N");
        Processo.preencherCampo("arbitramento","N");
        Processo.preencherCampo("assistente_social","Rogério");
        Processo.preencherCampo("data_entrada","2020-12-10");
        Processo.preencherCampo("data_saida","2020-12-20");
        Processo.preencherCampo("data_agendamento","2020-02-20");
        Processo.preencherCampo("status","Em andamento");
        Processo.preencherCampo("observacao","");
    }
}
