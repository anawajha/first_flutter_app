import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/modules/counter/cubit/cubit.dart';
import 'package:flutter_app/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context ,state){},
        builder: (context , state) => Scaffold(
          appBar: AppBar(
            title: Text('Counter'),
          ),
          body: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  CounterCubit.get(context).mainus();
                },
                    child: Text('MINUS'
                    )
                ),
                SizedBox(width: 20,),
                Text('${CounterCubit.get(context).counter}'),
                SizedBox(width: 20.0,),
                TextButton(onPressed: (){
                  CounterCubit.get(context).plus();
                }, child: Text('PLUS'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

