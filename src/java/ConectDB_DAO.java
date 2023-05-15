import java.sql.*;


public class ConectDB_DAO {

    public static void main(String[] args) {
        
        String url = "jdbc:mysql://localhost:3306/users";
        String username = "root";
        String password = "123a";
        
        try {
            Connection conn = DriverManager.getConnection(url, username, password);
            System.out.println("Conexão bem-sucedida!");
            
            // Consulta todos os usuários na tabela "usuarios"
            String sql = "SELECT * FROM usuarios";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            // Percorre o resultado e exibe os usuários
            while (rs.next()) {
                int id = rs.getInt("id");
                String nome = rs.getString("username");
                String email = rs.getString("email");
                System.out.println(id + ", " + nome + ", " + email);
            }
            
            // Fecha os recursos
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            System.out.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
