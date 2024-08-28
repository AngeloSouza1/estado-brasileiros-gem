# EstadosBrasileirosActiveRecord


### 💻 Sobre o projeto
---

<div align="justify">
A gem "EstadosBrasileirosActiveRecord" é uma ferramenta desenvolvida para facilitar a consulta e o uso das siglas dos estados do Brasil em aplicações Ruby on Rails. Com foco na simplicidade e acessibilidade, essa gem permite que desenvolvedores integrem rapidamente informações geográficas em seus projetos, promovendo uma melhor organização de dados.
</div>

## 🚀 Instalação

 🔹Para instalar a gem, adicione a seguinte linha ao seu arquivo Gemfile: 

```ruby
  gem 'estados_brasileiros_active_record', git: "https://github.com/AngeloSouza1/estado-brasileiros-gem.git"
```

🔹Em seguida, execute o comando:

```sh
  bundle install
```

🔹Após a instalação, você deve executar o generator:

```sh
  rails g estados_brasileiros_active_record:install
```

 🔹E, por fim, execute a rake para importar os dados: 

```sh
  rake importacao_estados:importar
```  

## 💡 Recursos

  🔹 Acesso Rápido: Obtenha as siglas dos 26 estados e do Distrito Federal de forma rápida e eficiente.
    
  🔹 Integração com Rails: Projetada especificamente para aplicações Ruby on Rails, facilitando a implementação.
    
  🔹 Documentação Clara: Instruções detalhadas para instalação e uso.

---

### 👁️‍🗨️ Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests no repositório do GitHub.