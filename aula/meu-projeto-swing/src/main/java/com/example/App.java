package com.example;

import javax.swing.*;

public class App extends JFrame {
    public App() {
        // Configurações da janela
        setTitle("Minha Aplicação Swing");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Adicione outros componentes aqui
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            App janela = new App();
            janela.setVisible(true);
        });
    }
}
