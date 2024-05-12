import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BlocProvider(
        create: (context) => PizzaBloc(),
        child: MyHomePage(title: 'Pizza Restaurant Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://images.app.goo.gl/eZA3Rgj4JnMyFvvX7'),
            Text(
              'Pizza Margherita',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text('400g - 270 kc - 12.3 pr - 9.8 fats - 30.7 cb'),
            Text('Fresh tomatoes, mozzarella, basil leaves, and extra-virgin olive oil'),
            BlocBuilder<PizzaBloc, PizzaState>(
              builder: (context, state) {
                return Column(
                  children: state.toppings.map((topping) {
                    return CheckboxListTile(
                      title: Text(topping.name),
                      value: topping.isSelected,
                      onChanged: (bool? value) {
                        BlocProvider.of<PizzaBloc>(context).add(ToppingChanged(topping: topping));
                      },
                    );
                  }).toList(),
                );
              },
            ),
            Text('\$12.99'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

class Topping {
  final String name;
  bool isSelected;

  Topping({required this.name, this.isSelected = false});
}

abstract class PizzaEvent {}

class ToppingChanged extends PizzaEvent {
  final Topping topping;

  ToppingChanged({required this.topping});
}

class PizzaState {
  List<Topping> toppings;

  PizzaState({required this.toppings});
}

class PizzaBloc extends Bloc<PizzaEvent, PizzaState> {
  PizzaBloc() : super(PizzaState(toppings: [
    Topping(name: 'Olives'),
    Topping(name: 'Peppers'),
    Topping(name: 'Mushrooms'),
  ]));

  @override
  Stream<PizzaState> mapEventToState(PizzaEvent event) async* {
    if (event is ToppingChanged) {
      state.toppings = state.toppings.map((topping) {
        if (topping.name == event.topping.name) {
          topping.isSelected = !topping.isSelected;
        }
        return topping;
      }).toList();
      yield PizzaState(toppings: state.toppings);
    }
  }
}


