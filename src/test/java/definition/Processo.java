package definition;

import com.sun.deploy.config.JREInfo;
import groovy.json.internal.LazyMap;
import support.RESTSupport;

public class Processo {
    public static final String URL = "http://agapito-server.herokuapp.com/processos";

    private static String id = "";
    private static LazyMap campos = new LazyMap();

    public static String getId() {
        return id;
    }

    public static void setId(String id) {
        Processo.id = id;
    }

    public static void limparCampos() {
        campos.clear();
    }

    public static String getValorCampo(String campo) {
        return campos.get(campo).toString();
    }

    public static void preencherCampo(String campo, String valor) {
        campos.put(campo, valor);
    }

    public static void salvar(boolean pegarId) {
        RESTSupport.executePost(URL, campos);
        if (pegarId) {
            Processo.setId(RESTSupport.key("id").toString());
        }
    }

    public static void carregarProcesso() {
        RESTSupport.executeGet(URL + "/" + id);
    }

    public static void atualizar() {
        RESTSupport.executePut(URL + "/" + id, campos);
    }

    public static void apagar() {
        RESTSupport.executeDelete(URL + "/" + id);
    }
}
