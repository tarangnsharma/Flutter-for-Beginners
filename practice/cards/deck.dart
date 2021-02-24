void main() {
  var deck = new Deck();

  // toString()
  print(deck);

  // using shuffle()
  deck.shuffle();

  // using cardsWithSuit()
  print(deck.cardsWithSuit('Diamonds'));

  // using deal
  print(deck);
  print(deck.deal(5));
  print(deck);

  // using removeCard()
  deck.removeCard('Diamonds', 'Ace');
  print(deck);
}

class Deck {
  List<Card> cards = [];
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank) {
    return cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}

class Card {
  String rank;
  String suit;

  Card({this.rank, this.suit});

  toString() {
    return '$rank of $suit';
  }
}
