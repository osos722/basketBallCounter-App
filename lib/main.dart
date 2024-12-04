import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cupit/counterCupit.dart';
import 'cupit/counterState.dart';

void main() {
  runApp(const pointsCounter());
}

class pointsCounter extends StatelessWidget {
  const pointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCupit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  int Apoints=0;
  int Bpoints=0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCupit,CounterState>(
      listener: (context, state) {
        if(state is CounterIncrementAState){
          Apoints=BlocProvider.of<CounterCupit>(context).counterApoint;
        }
        else if(state is CounterIncrementBState){
          Bpoints=BlocProvider.of<CounterCupit>(context).CounterBpoint;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team E',
                        style: TextStyle(
                          fontSize: 42,
                        ),
                      ),
                       Text(
                        "${BlocProvider.of<CounterCupit>(context).counterApoint}",
                        style: TextStyle(
                          fontSize: 200,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCupit>(context).teamApoint(1);
                        },
                        child: const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCupit>(context).teamApoint(2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCupit>(context).teamApoint(3);
                        },
                        child: const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 420,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 42,
                        ),
                      ),
                       Text(
                        '${BlocProvider.of<CounterCupit>(context).CounterBpoint}',
                        style: TextStyle(
                          fontSize: 200,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCupit>(context).teamBpoint(1);
                        },
                        child: const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCupit>(context).teamBpoint(2);
                        },
                        child: const Text(
                          'Add 2 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCupit>(context).teamBpoint(3);
                        },
                        child: const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {},
                child: const Text(
                  'Add 1 Point ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}







