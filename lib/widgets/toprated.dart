import 'package:flutter/material.dart';
import 'package:movie_recommendation/utils/text.dart';


class TopRatedMovies extends StatelessWidget {
  final List toprated;
  const TopRatedMovies({Key key, this.toprated}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modified_text(
            text:'TopRated Movies 🌟🎖️',
            size:26,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            child: ListView.builder(
                itemCount: toprated.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (
                    context, index
                    ){
                  return InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 140,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500'+toprated[index]['poster_path']
                                    )
                                )
                            ),
                          ),
                          Container(
                            child: modified_text(text:toprated[index]['title']!=null?
                            toprated[index]['title']:'Loading'),)
                        ],
                      ),
                    ),
                  );
                }))
        ],
      ),
    );
  }
}
