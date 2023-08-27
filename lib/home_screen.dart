import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trigger_app/constant/font_style.dart';
import 'package:trigger_app/cubit/random_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text("Trigger App"))),
        body: _buildUi()
    );
  }

  Widget _buildUi(){
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    RandomCubit randomCubit;
    randomCubit = RandomCubit();
    var getvalue = randomCubit.timestamp.toString();
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            elevation: 5,
            child: Container(
              width: width,
              height: height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: BlocBuilder<RandomCubit, int>(
                builder: (context, state) {
                  return Center(
                    child: getvalue.toString() == state.toString()
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Success",
                            style: AppFontStyle.successTextStyle()),
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text("${_counter+1}".toString(),style: AppFontStyle.successTextStyle()),
                        ),
                      ],
                    )
                        : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("try again!!",
                            style: AppFontStyle.titleTextStyle()),
                        const Icon(Icons.error_outline,
                            color: Colors.red)
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<RandomCubit, int>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      if(getvalue.toString() == state.toString()){
                        _incrementCounter();
                      }
                      setState(() {
                        context.read<RandomCubit>().generateRandomNumber();
                        getvalue = randomCubit.timestamp;
                      });
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: width * 0.38,
                        height: height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Generate",
                                  style: AppFontStyle.titleTextStyle(),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                getvalue,
                                style: AppFontStyle.numberTextStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Card(
                elevation: 5,
                child: Container(
                  width: width * 0.38,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: BlocBuilder<RandomCubit, int>(
                      builder: (context, state) {
                        return Text("$state",
                            style: AppFontStyle.headerTextStyle());
                      },
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
