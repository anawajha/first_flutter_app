
import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {

  final double result;
  final int age;
  final int weight;
  final int height;
  final bool gender;

  BMI_Result(this.result, this.age, this.weight, this.height, this.gender);

  String status(double result){
    String status = '';
    if(result < 15){
      status = 'Suffering from a very severe weight loss';
    }else if(result >= 15.0 && result < 16.0){
      status = 'Suffering from severe weight loss';
    }else if(result >= 16.0 && result < 18.5){
      status = 'You are underweight';
    }else if(result >= 18.5 && result < 25.0){
      status = 'Your weight is normal';
    }else if(result >= 25.0 && result < 30.0){
      status = 'You are overweight';
    }else if(result >= 30.0 && result < 35.0){
      status = 'You are mildly obese (class I obesity)';
    }else if(result >= 35.0 && result < 40.0){
      status = 'You are moderately obese (class II obesity)';
    }else if(result > 40.0){
      status = 'You are severely obese (class III obesity)';
    }
    return status;
  }

  Color getBackground(double result){
    Color status = Colors.grey;
    if(result < 15){
      status = Colors.blue;
    }else if(result >= 15.0 && result < 16.0){
      status = Colors.tealAccent;
    }else if(result >= 16.0 && result < 18.5){
      status = Colors.teal;
    }else if(result >= 18.5 && result < 25.0){
      status = Colors.green;
    }else if(result >= 25.0 && result < 30.0){
      status = Colors.yellow;
    }else if(result >= 30.0 && result < 35.0){
      status = Colors.orange;
    }else if(result >= 35.0 && result < 40.0){
      status = Colors.deepOrange;
    }else if(result > 40.0){
      status = Colors.red;
    }
    return status;
  }

  String getAdvice(double result){
    String advice = '' ;
    double w = 0.0;
if(result > 25){
  w = result - 25;
  advice = 'You need to lose ${w.toStringAsFixed(2)} kg to reach a normal weight';
}else if(result < 18.5){
  w = 18.5 - result;
  advice = 'You need to gain ${w.toStringAsFixed(2)} kg to reach a normal weight';
}else {
  advice = 'Your weight is perfect, keep it like that';
}
    return advice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getBackground(result),

        title: Text('Result'),
      ),
      body: Column(
        children: [
          SizedBox(height: 15.0,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Gender',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${gender ? 'Male' : 'Female'}',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),
          SizedBox(height: 15.0,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${age} years old',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),
          SizedBox(height: 15.0,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Height',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$height cm',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),
          SizedBox(height: 15.0,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$weight kg',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),
          SizedBox(height: 15.0,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Result',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: getBackground(result),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$result',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),
          SizedBox(height: 15.0,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Advice',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${getAdvice(result)}',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),
          SizedBox(height: 15.0,),
        ],
      ),
    );
  }
}
