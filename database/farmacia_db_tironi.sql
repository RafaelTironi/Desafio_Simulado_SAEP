Use farmacia_db_tironi;

Create table reposicao(
 id int primary key auto_increment,
 id_usuario int not null,
 foreign key (id_usuario) references funcionario(id) on delete cascade,
 nome varchar(250) not null,
 quantidade int not null,
 categoria enum('genérico','referência','controlado','higiene') not null,
 urgencia enum('baixa','média','alta') not null,
 data date not null  default current_timestamp,
 status enum('solicitado','separação','recebido') not null default 'solicitado'

);

Insert into funcionario(nome,email) values
('Rafael','rafael@email.com'),
('Jon','jon@email.com'),
('Snow','snow@email.com');

Insert into reposicao(id_usuario,nome,quantidade,categoria,urgencia,status) Values
('2','Paracetamal','4','genérico','baixa','separação'),
('3','Dipirona','2','genérico','alta','solicitado'),
('1','Ritalina','1','controlado','baixa','separação'),
('2','Paracetamal','7','genérico','Alta','recebido'),
('3','paracetamal','4','genérico','baixa','separação');