import 'package:advance_flutter_ch1/Screens/Quotes%20Data%20Solving%20Provider/ModelData/quotesModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/quotesProvider.dart';

QuotesModel quotesModel = QuotesModel();

class QuotesPage extends StatelessWidget {
  const QuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    QuotesProvider quotesProviderTrue =
        Provider.of<QuotesProvider>(context, listen: true);
    QuotesProvider quotesProviderFalse =
        Provider.of<QuotesProvider>(context, listen: false);

    quotesModel = QuotesModel.toList(quotesList);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1C1B1F),
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          toolbarHeight: 70,
          backgroundColor: Colors.blue.shade800,
          centerTitle: true,
          title: const Text(
            'Quotes',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: quotesModel.quoteModelList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Card(
                color: const Color(0xff27282E),
                child: ListTile(
                  title: Text(
                    quotesModel.quoteModelList[index].quote.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    quotesModel.quoteModelList[index].author.toString(),
                    style: const TextStyle(color: Colors.white60),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        quotesProviderFalse.deleteQuote(index);
                      },
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            txtQuotes = TextEditingController();
            txtAuthor = TextEditingController();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: const Color(0xff1C1B1F),
                title: const Text(
                  'Add New Quote',
                  style: TextStyle(color: Colors.white),
                ),
                content: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field Must be Required !';
                          }
                          return null;
                        },
                        controller: txtQuotes,
                        decoration: InputDecoration(
                            hintText: 'Quote',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ))),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field Must be Required !';
                          }
                          return null;
                        },
                        controller: txtAuthor,
                        decoration: InputDecoration(
                            hintText: 'Author',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ))),
                      ),
                    ],
                  ),
                ),
                actions: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel',
                          style: TextStyle(color: Colors.blue))),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pop(context);
                          quotesProviderFalse.addQuote(
                              txtQuotes.text.toString(),
                              txtAuthor.text.toString());
                        }
                      },
                      child: const Text(
                        'OK',
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

TextEditingController txtQuotes = TextEditingController();
TextEditingController txtAuthor = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey();
