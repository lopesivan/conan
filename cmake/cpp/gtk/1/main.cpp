#include <gtkmm.h>

#include <iostream>

class MyWindow : public Gtk::Window
{
public:
  MyWindow()
  {
    // Configura o botão.
    m_button.set_label("Clique aqui");
    m_button.signal_clicked().connect(sigc::mem_fun(*this, &MyWindow::on_button_clicked));

    // Adiciona o botão à janela. Windows em gtkmm são containers.
    add(m_button);

    // Exibe todos os widgets na janela.
    show_all_children();
  }

protected:
  // Sinal manipulador para o clique do botão.
  void on_button_clicked() { std::cout << "Olá, mundo!" << std::endl; }

  Gtk::Button m_button;  // O botão
};

int main(int argc, char* argv[])
{
  auto app = Gtk::Application::create(argc, argv, "org.gtkmm.example");

  MyWindow window;
  window.set_default_size(200, 200);

  return app->run(window);
}
