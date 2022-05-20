//
//  Filme.swift
//  DesafioSextaFeira13
//
//  Created by André N. dos Santos on 15/05/22.
//

import Foundation
import UIKit

public enum TipoPublico: Int {
    case Adulto = 0
    case Infantil = 1
}

public class Filme {
    let id: String
    let titulo: String
    let anoDeLancamento: Int
    let descricao: String
    let poster: UIImage
    let tipoPublico: TipoPublico
    
    init(titulo: String, anoDeLancamento: Int, descricao: String, poster: UIImage, tipoPublico: TipoPublico) {
        self.id = UUID().uuidString
        self.titulo = titulo
        self.anoDeLancamento = anoDeLancamento
        self.descricao = descricao
        self.poster = poster
        self.tipoPublico = tipoPublico
    }
    
    public static func criarFilmesDeTerror() -> [Filme] {
        var filmes: [Filme] = []
        filmes.append(Filme(
            titulo: "A Bruxa de Blair",
            anoDeLancamento: 1999,
            descricao: "Se Holocausto Canibal inovou na forma de apresentar o found footage, A Bruxa de Blair popularizou o método de gravação.\n\nA história assustadora criada por Myrick e Sánchez encaixa perfeitamente dentro da proposta do filme, que com baixíssimo orçamento tornou-se um dos mais lucrativos da história.",
            poster: UIImage(named: "ABruxaDeBlair") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        
        filmes.append(Filme(
            titulo: "O Enigma de Outro Mundo",
            anoDeLancamento: 1982,
            descricao: "Mais um clássico do diretor John Carpenter, acompanhado do mestre Ennio Morricone na trilha sonora. Com uma fotografia muito interessante, o filme coloca aliens na Antártida, num misterioso enredo acerca da capacidade extraterrestre de assumir outras formas.",
            poster: UIImage(named: "ACoisa") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "Alien",
            anoDeLancamento: 1979,
            descricao: "Mestre em mesclar ficção científica com terror, Ridley Scott fez de Alien um dos filmes mais influentes do início dos anos 80, dando início também a popularização deste tipo de produções.\n\nAlien é aclamado pela crítica, gerou diversas sequências e produções paralelas e é considerado até hoje um dos melhores filmes de criaturas alienígenas.",
            poster: UIImage(named: "Alien") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "A Noite dos Mortos-Vivos",
            anoDeLancamento: 1968,
            descricao: "Filme pioneiro e de maior destaque do rei dos zumbis, George Romero. Com recursos visuais limitados e ainda em preto e branco, o diretor conseguiu criar boa trama (méritos também para John Russo, roteirista) e surpreender ao entregar um filme muito bem construído e com cenas memoráveis. Se os zumbis hoje são destaque em séries como The Walking Dead, muito deve-se a Romero.\n\nAlém de ser muito explícito para a época, o filme também faz referências, mesmo que de forma indireta, a postura de parte da sociedade norte-americana durante a Guerra do Vietnã.",
            poster: UIImage(named: "ANoiteDosMortosVivos") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "A Profecia",
            anoDeLancamento: 1976,
            descricao: "Mais um filme que inicia uma franquia e que deixa uma série de histórias assustadoras sobre os bastidores. A Profecia tem inspiração literária, porém sofre muitas adaptações para chegar ao cinema com a cara de Richard Donner, diretor famoso por filmes como Os Goonies, Máquina Mortífera e Superman.\n\nCom trilha sonora obscura e história assustadora, A Profecia traz mais um bom papel infantil, com Harvey Spencer Stephens dando vida a Damien, filho de satã, que acaba sendo adotado por um diplomata para executar seu plano de dominação.",
            poster: UIImage(named: "AProfecia") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Carrie, a Estranha",
            anoDeLancamento: 1976,
            descricao: "Um dos principais livros de Stephen King, Carrie ganhou uma bela adaptação, sendo que o primeiro filme, dentre tantas outras produções futuras, é ainda hoje o mais aclamado.\n\nBrian De Palma administra belo elenco e cria uma atmosfera que é muito particular de Carrie, algo muito difícil de ser transferido do livro para o filme. Foi indicado ao Oscar nas categorias de melhor atriz, para Sissy Spacek, e de melhor atriz coadjuvante, para Piper Laurie.",
            poster: UIImage(named: "Carrie") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "Cemitério Maldito",
            anoDeLancamento: 1989,
            descricao: "Mais uma vez ele: Stephen King!\nO escritor é considerado o rei do terror e inspirou muitos filmes, sendo que Cemitério Maldito é uma das adaptações que King mais gosta, sendo que também escreveu o roteiro e exigiu que ele fosse seguido fielmente, além de fazer uma pequena participação como ator.",
            poster: UIImage(named: "CemiterioMaldito") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Drácula, de Bran Stoker",
            anoDeLancamento: 1992,
            descricao: "Coube a Francis Ford Coppola, em 1992, conseguir fazer uma adaptação fiel ao livro (algo já tentado em Nosferatu).\n\nComo o próprio nome do filme já deixa claro, trata-se da ideia de Bram Stoker adaptada diretamente para as telas. Com escolha pontual de elenco, o filme foi um sucesso e conseguiu dar dinamismo para uma história que em diversos pontos poderia parecer massante.",
            poster: UIImage(named: "Dracula") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Halloween",
            anoDeLancamento: 1978,
            descricao: "O primeiro dos grandes filmes do gênero slasher. Com baixo orçamento e um lucro incrível, fez com que os anos seguintes, principalmente na década de 80, fossem recheados de assassinos.\n\nMichael Myers ainda apareceu em diversas outras sequências e tornou-se uma figura cultuada, principalmente pelos seus movimentos calculistas e aparência amedrontadora.",
            poster: UIImage(named: "Halloween") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Hellraiser",
            anoDeLancamento: 1987,
            descricao: "O cinema do Reino Unido volta a aparecer na lista com um filme extremamente conceitual. Clive Barker inicia a franquia Hellraiser mostrando os conflitos morais entorno de uma família, sadomasoquismo e ocultismo.\n\nA configuração do lamento, dimensão dos Cenobitas e muitos outros segredos são revelados e explorados na história. Vale ressaltar que o diretor faz parte da seleta lista de escritores que conseguiram também ter sucesso comandando as câmeras.",
            poster: UIImage(named: "Hellraiser") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Invocação do Mal",
            anoDeLancamento: 2013,
            descricao: "Com Invocação do Mal, James Wan se consolidou como um dos maiores diretores e produtores de cinema de terror das últimas duas décadas. Criador de Jogos Mortais e Sobrenatural, Wan apresenta uma história intrigante e inspirada no casal Warren, conhecidos por perseguirem entidades sobrenaturais.\n\nAlém de ser um belo filme, Invocação do Mal iniciou uma franquia, que já se desmembrou para filmes como Annabelle.",
            poster: UIImage(named: "InvocacaoDoMal") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "It",
            anoDeLancamento: 1990,
            descricao: "Desta vez, a obra de Stephen King foi adaptada por Tommy Lee Wallace, que também assumiu o roteiro e acrescentou elementos de casos reais de homens que se vestiam de palhaços para cometer crimes.\n\nMesmo nos anos 90, Pennywise é um vilão digno dos anos 80, seguindo todas as características de ícones slasher.",
            poster: UIImage(named: "It") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "Meia Noite Levarei Sua Alma",
            anoDeLancamento: 1964,
            descricao: "Não poderíamos deixar de fora um dos ícones do terror nacional. Zé do Caixão, em 1964, produziu sua melhor obra, ganhando reconhecimento nacional e ajudando no fortalecimento de uma, ainda hoje em desenvolvimento, identidade cinematográfica nacional. O sucesso foi tanto, que o personagem se misturou com o criador, gerando ainda outros filmes e influenciando gerações.\n\nUm filme que não apenas é bom por seu pioneirismo. Trata-se de uma produção criativa, que aproveitou bem os limitadíssimos recursos.",
            poster: UIImage(named: "MeiaNoiteLevareiSuaAlma") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        filmes.append(Filme(
            titulo: "Nosferatu",
            anoDeLancamento: 1922,
            descricao: "Nesta lista, filmes que tiveram diversas versões de sucesso, estão ocupando apenas uma posição, com exceção de Drácula, que antes de fazer sucesso em 1931, já havia sido adaptado (seguindo fielmente o livro). Sem a autorização da família Stoker para a filmagem (o escritor, Bram, já havia morrido), os produtores alemães decidiram prosseguir com o nome de Nosferatu (expressão citada por Van Helsing, no livro, para definir os vampiros na Europa), adaptando todos os locais e personagens, porém dando a primeira cara para o vampiro mais famoso do cinema.\n\nA condução de cinco atos é de F. W. Murnau, outro diretor importantíssimo para o expressionismo alemão, que no início da década de 20 dominou o cinema. Na época, o filme teve sua distribuição proibida e diversas cópias foram destruídas, sendo novamente aceito somente após a morte da viúva de Bram Stoker.\n\nO Conde Drácula se transforma em Conde Orlok, um vampiro dos Montes Cárpatos que se apaixona por uma jovem da cidade de Wisborg.",
            poster: UIImage(named: "Nosferatu") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O bebê de Rosemary",
            anoDeLancamento: 1968,
            descricao: "Roman Polanski, diretor, e William Castle, roteirista, fizeram de O Bebê de Rosemary um dos maiores clássicos do cinema. Ambientado praticamente todo em um hotel, o filme tem um roteiro muito bem organizado (inspirado no livro de Ira Levin) e uma das melhores direções de Polanski, que soube explorar cada centímetro importante do apartamento para a criação das cenas de tensão.\n\nNo elenco, o trio Mia Farrow (que se separou de Frank Sinatra para aceitar o papel), John Cassavetes e Ruth Gordon (vencedora do Oscar como melhor atriz coadjuvante) dão um verdadeiro show ao entregarem atuações de primeira linha.",
            poster: UIImage(named: "OBebeDeRosemary") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O Chamado",
            anoDeLancamento: 1998,
            descricao: "Filme que inspirou O Chamado (2002), Ringu é derivado do livro homônimo de Koji Suzuki. Sucesso comercial no Japão, com distribuição mundial, o filme comandado por Hideo Nakata é considerado por muitos fãs superior a versão norte-americana.\n\nAmbos os filmes são marcantes, sendo que na versão japonesa a história flui de maneira melhor, porém em 2002, Daveigh Chase surpreendeu interpretando Samara. Dois grandes filmes!",
            poster: UIImage(named: "OChamadoOriginal") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O Exorcista",
            anoDeLancamento: 1973,
            descricao: "Provavelmente um dos pontos mais altos da história do terror. Com orçamento de 12 milhões de dólares, o filme lucrou mais de 400 milhões com a história do exorcismo de Regan MacNeil.\n\nO livro de William Peter Blatty, também roteirista, foi adaptado por William Friedkin, que criou uma história assustadora e cercada de mistérios.\n\nFoi o filme de terror mais indicado ao Oscar, ganhando nas categorias de melhor roteiro adaptado e som.",
            poster: UIImage(named: "OExorcista") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O Fantasma da Ópera",
            anoDeLancamento: 1925,
            descricao: "Ainda não faziam duas décadas do lançamento do romance de Gaston Leroux (famoso escritor francês) quando os estúdios Universal decidiram fazer sua adaptação cinematográfica. Para isso, o lendário Carl Laemmle (alemão, fundador do estúdio) assumiu a produção, trazendo o ator Lon Chaney, conhecido como o “homem das mil faces”, que faz uma de suas melhores atuações. Chaney divide a lista com seu filho, que aparece na década de 40 como lobisomem.\n\nNos primeiros anos do cinema de terror, o mistério envolvendo deformações era receita certeira para apavorar o público. O momento da revelação do rosto de Erik, o fantasma, fez com que muitas pessoas abandonassem os cinemas horrorizadas. O filme mostra a história de um compositor que tem seu rosto desfigurado em um acidente e passa a viver no subsolo de Paris. Assustando as pessoas, ele conhece Christine, por quem se apaixona e planeja um sequestro.",
            poster: UIImage(named: "OFantasmaDaOpera") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "O Iluminado",
            anoDeLancamento: 1980,
            descricao: "Um dos livros mais assustadores da carreira de Stephen King e um filme que o escritor não gostou, que a crítica da época detonou e que hoje é…um clássico!\nStanley Kubrick faz uma bela adaptação do livro, conseguindo transformá-lo em uma linguagem cinematográfica muito interessante. Jack Nicholson faz um de seus melhores papéis como o perturbado zelador de um antigo e misterioso hotel.",
            poster: UIImage(named: "OIluminado") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Os Outros",
            anoDeLancamento: 2001,
            descricao: "Enquanto muitos filmes da lista tem baixo orçamento e equipe enxuta, Os Outros pode ser considerado uma grande produção. Com orçamento de US$ 17 milhões, o longa é escrito e dirigido por Alejandro Amenábar, que comanda Nicole Kidman em uma assustadora história ambientada nos anos 40.",
            poster: UIImage(named: "OsOutros") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Os Pássaros",
            anoDeLancamento: 1963,
            descricao: "Mais um filme que provavelmente gerará polêmicas. Sim, Os Pássaros está na lista de melhores filmes de terror. Mesmo tendo muitos elementos que provavelmente lhe colocariam no gênero suspense, o filme acaba ficando com um pé no terror e com certeza merece vaga entre estes 50 filmes.\n\nMais um ótimo trabalho de Alfred Hitchcock, que mostrava a maturidade do seu trabalho nos Estados Unidos. Muito metódico, ele cria um filme bem amarrado e que a todo instante conseguem captar e deixar o público tenso. As cenas em que os pássaros atacam demonstram a habilidade do diretor em contornar a falta de recursos visuais da época.",
            poster: UIImage(named: "OsPassaros") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Pânico!",
            anoDeLancamento: 1996,
            descricao: "Depois de A Hora do Pesadelo, Wes Craven cria mais um vilão icônico e inicia outra franquia de sucesso. Pânico conseguiu trazer o público jovem do final dos anos 90 de volta para o gênero e criou uma narrativa moderna, em que satirizou as próprias cenas clichês do terror.",
            poster: UIImage(named: "Panico") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Poltergeist - O Fenômeno",
            anoDeLancamento: 1982,
            descricao: "Filme produzido por Steven Spielberg e dirigido por Tobe Hooper. Um dos maiores clássicos dos anos 80, eternizando a jovem Heather O’Rourke como a garotinha possuída pela televisão.\n\nTrata-se de um filme com orçamento alto e diversas indicações em prêmios importantes, como o Oscar. O contexto de caça amaldiçoada já era popular no cinema, porém Poltergeist conseguiu ser inovador e marcante.",
            poster: UIImage(named: "Poltergeist") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Psicose",
            anoDeLancamento: 1960,
            descricao: "Esse é com certeza um marco para o suspense e para o terror. Alfred Hitchcock aposta na história de um livro, ainda não tao famoso, e o transforma em um verdadeiro clássico. Elementos como a personalidade perturbada de Norman Bates, as cenas de assassinatos (como a do chuveiro) e os elementos misteriosos da casa da família Bates fazem com que esse seja um dos filmes de maior destaque da lista.\n\nAinda preto e branco em uma época que o colorido já dominava o mercado, o filme consegue não ser tão chocante nas cenas sangrentas, mesmo assim, não deixando de quebrar paradigmas, como a cena da descarga, algo simples, mas que porém não era mostrado na época.",
            poster: UIImage(named: "Psicose") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Sexta-feira 13",
            anoDeLancamento: 1980,
            descricao: "O primeiro filme da franquia Sexta-Feira 13 foi idealizado para seguir a linha de Halloween, que já havia feito sucesso 2 anos antes ao apresentar um assassino em série frio e misterioso.\n\nComo não pretendemos repetir filmes da mesma franquia. Nesta posição, com o primeiro, que nem mesmo apresenta o famoso assassino Jason na forma como é conhecido atualmente, registramos toda a franquia, com destaque também para Sexta-Feira 13 – Parte III.",
            poster: UIImage(named: "SextaFeira13") ?? UIImage(),
            tipoPublico: .Adulto)
        )
        filmes.append(Filme(
            titulo: "Tubarão",
            anoDeLancamento: 1975,
            descricao: "Para os fãs de terror, o filme é uma das melhores produções do diretor Steven Spielberg, que conseguiu dar dinamismo e criar cenas memoráveis para o filme, que mesmo com o orçamento razoável, tinha dificuldades para criar as cenas em que o tubarão emergia.\n\nO que poucos sabem é que este filme também é o início de uma franquia, que contou com algumas sequências de baixo orçamento (com mudanças no elenco e direção).\n\nVenceu o Oscar nas categorias de melhor trilha sonora, melhor montagem e melhor som, além de competir na de melhor filme.",
            poster: UIImage(named: "Tubarao") ?? UIImage(),
            tipoPublico: .Infantil)
        )
        return filmes
    }
}
