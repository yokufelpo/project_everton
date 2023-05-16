package br.com.project.bean;

public class User {

    private int id;
    private String username;
    private String email;

    // Construtor vazio
    public User() {
         username = "";
        email = "";
    }
    
    // Construtor com argumentos
    public User(int id, String username, String email) {
        this.id = id;
        this.username = username;
        this.email = email;
    }
    
    // Getters e Setters
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getusername() {
        return username;
    }
    
    public void setNome(String username) {
        this.username = username;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
}
