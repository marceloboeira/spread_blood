root = User.create(username: 'blood',
                   email: 'root@spreadblood.com',
                   password: 'dexter10203040',
                   name: 'Blood',
                   birthday: Date.parse('1994-03-07'),
                   gender: Gender::MALE,
                   confirmed_at: DateTime.now,
                   blood_type: BloodType::A_POSITIVE,
                   role: UserRole::ROOT)

test = User.create(username: 'test',
                   email: 'test@spreadblood.com',
                   password: 'blade10203040',
                   name: 'Test',
                   birthday: Date.parse('1996-02-16'),
                   gender: Gender::MALE,
                   confirmed_at: DateTime.now,
                   blood_type: BloodType::A_NEGATIVE,
                   role: UserRole::REGULAR)

# Remove team members seeds after the event
marcelo = User.create(username: 'marcelo',
                      email: 'marceloboeira@live.com',
                      password: '10203040',
                      name: 'Marcelo',
                      birthday: Date.parse('1994-03-07'),
                      gender: Gender::MALE,
                      confirmed_at: DateTime.now,
                      blood_type: BloodType::O_POSITIVE,
                      role: UserRole::REGULAR)

marvin = User.create(username: 'marvin',
                      email: 'marvin.medeiros52@gmail.com',
                      password: '10203040',
                      name: 'Marvin',
                      birthday: Date.parse('1994-06-01'),
                      gender: Gender::MALE,
                      confirmed_at: DateTime.now,
                      blood_type: BloodType::A_POSITIVE,
                      role: UserRole::REGULAR)

matheus = User.create(username: 'matheus',
                      email: 'msl7@outlook.com',
                      password: '10203040',
                      name: 'Matheus',
                      birthday: Date.parse('1991-09-06'),
                      gender: Gender::MALE,
                      confirmed_at: DateTime.now,
                      blood_type: BloodType::O_POSITIVE,
                      role: UserRole::REGULAR)

andre = User.create(username: 'andre',
                      email: 'cnandre.nunes@gmail.com',
                      password: '10203040',
                      name: 'André',
                      birthday: Date.parse('1992-06-13'),
                      gender: Gender::MALE,
                      confirmed_at: DateTime.now,
                      blood_type: BloodType::A_POSITIVE,
                      role: UserRole::REGULAR)

Donation.create(user: marcelo, location: "Banco de Sangue do Hospital de Clínicas", amount: 650, comment: "Awesome", donated_at: 2.years.ago)
Donation.create(user: marcelo, location: "Banco de Sangue do Hospital de Clínicas", amount: 350, comment: "Awesome", donated_at: 1.month.ago)
Donation.create(user: marvin, location: "Banco de Sangue do Hospital de Clínicas", amount: 350, comment: "Awesome", donated_at: 1.day.ago)
Donation.create(user: matheus, location: "Banco de Sangue do Hospital de Clínicas", amount: 538, comment: "Awesome", donated_at: 1.hour.ago)
Donation.create(user: andre, location: "Banco de Sangue do Hospital de Clínicas", amount: 500, comment: "Awesome", donated_at: 1.week.ago)


Tip.create(content: "Quatro é o número de vidas que podem ser salvas com cada doação de sangue")
Tip.create(content: "O sangue representa cerca de 7% do peso corporal de um indivíduo adulto")
Tip.create(content: "Pessoa com boa saúde, entre 16 e 69 anos de idade (desde que a primeira doação tenha sido feita até 60 anos; e menores de idade com autorização e documentos especificos), com mais de 50 kg de peso, pode se candidatar para ser doadora de sangue")
Tip.create(content: "A doação de sangue não engrossa nem afina o sangue")
Tip.create(content: "Doando sangue você não ganha nem perde peso")
Tip.create(content: "A doação de sangue não oferece ao doador nenhum risco de contrair doenças infecciosas. Portanto, você não corre risco de contrair AIDS ou Hepatite com a doação de sangue")
Tip.create(content: "Cinco são as etapas para uma doação de sangue: cadastro (ou registro) do doador, triagem clínica (inclui teste de anemia, verificação da pressão arterial, batimentos cardíacos, peso, temperatura e questionário sobre sua saúde), voto de auto-exclusão, doação propriamente dita e lanche pós- doação")
Tip.create(content: "Todo o processo de doação de sangue dura cerca de uma hora")
Tip.create(content: "A cada dois segundos, algum paciente necessita de transfusão de sangue no Brasil")
Tip.create(content: "Todas as células do sangue são produzidas na medula dos ossos, principalmente nos ossos chatos")
Tip.create(content: "Mulheres representam menos de 40% dos doadores de sangue no Brasil")
Tip.create(content: "Ainda não há nenhum substituto para o sangue humano")
