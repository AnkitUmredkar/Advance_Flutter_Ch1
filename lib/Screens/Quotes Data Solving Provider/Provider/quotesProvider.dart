import 'package:flutter/material.dart';
import '../ModelData/quotesModel.dart';

class QuotesProvider extends ChangeNotifier {
  void addQuote(String quote, String author) {
    // quotesModel.quoteModelList.insert(0,QuotesModel(quote : quote, author: author));
    quotesList.insert(0, {'quote': quote, 'author': author});
    notifyListeners();
  }

  void deleteQuote(int index) {
    // quotesModel.quoteModelList.insert(0,QuotesModel(quote : quote, author: author));
    quotesList.removeAt(index);
    notifyListeners();
  }
}
