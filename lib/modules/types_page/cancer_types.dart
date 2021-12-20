import 'package:dose_treatment_cancer/models/cancer_model.dart';
import 'package:dose_treatment_cancer/shared/components/vertical_text.dart';
import 'package:dose_treatment_cancer/shared/constants.dart';
import 'package:flutter/material.dart';

class CancerTypesPage extends StatelessWidget {
  CancerTypesPage({Key? key}) : super(key: key);
  final List<CancerModel> cancer = [
    CancerModel(
        image: 'assets/images/bone_cancer.jpg',
        name: 'Bone Cancer',
        details:
            'Bone cancer can begin in any bone in the body, but it most commonly affects the pelvis or the long bones in the arms and legs. Bone cancer is rare, making up less than 1 percent of all cancers. In fact, noncancerous bone tumors are much more common than cancerous ones.'),
    CancerModel(
      image: 'assets/images/endocrine_cancer.jpg',
      name: 'Endocrine_caner',
      details:
          'Endocrine cancers are those found in tissues of the endocrine system, which includes the thyroid, adrenal, pancreas, parathyroid, and pituitary glands.',
    ),
    CancerModel(
      image: 'assets/images/skin_cancer.jpg',
      name: 'Skin Cancer',
      details:
          'Skin cancer is an abnormal growth of skin cells. It generally develops in areas that are exposed to the sun, but it can also form in places that don’t normally get sun exposure.',
    ),
    CancerModel(
      image: 'assets/images/rare_cancer.jpg',
      name: 'Rare Cancer',
      details: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                mainColor,
                secondColorLight,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              //const VerticalText(text: 'Cancer Types'),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    mainAxisSpacing: 1.0,
                    crossAxisSpacing: 1.0,
                    childAspectRatio: 1 / 1.58,
                    children:[
                      buildGridItem(cancer[0], context),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(CancerModel model, context) => Column(
        children: [
          InkWell(
            onTap: () {
              print('$model');
            },
            child: Image(
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
              image: AssetImage(
                model.image,
              ),
            ),
          ),
          SizedBox(
            width: 180.0,
            child: ExpansionTile(
              title: Text(
                model.name,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              children: [
                Text(
                  model.details,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      );
}
