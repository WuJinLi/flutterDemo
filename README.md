# flutter_learn

A new Flutter application.


+ 2019/9/24:
  ### Stack组件，Stack结合Align组件或者Positioned组件实现子元素的定位
  1.Stack组件通过自身属性alignment来进行子元素的定位
  2.Stack组件结合Align组件进行子元素多元化的定位，Align组件使用属性alignment中多样性可以完成对指定子元素的位置设定
     ```
    Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.home,
                size: 50.0,
                color: Colors.white,
                )
  ```
  3.Stack组件结合Positioned组件进行子元素多元化的定位，Positioned组件left，top，right，bottom来控制子元素的显示位置
  ```
    Positioned(
              left: 100.0,
              bottom: 100.0,
              child: Icon(
                Icons.access_time,
                size: 40.0,
                color: Colors.white,
              ),
            )
  ```
  注意：
  在使用Align或者Positioned进行子元素定位是，应该将Stack组件放置在一个宽高都确定的父容器之内，进行定位操作！
    ### CardView组件和AspectRatio组件
    + CardView组件实现卡片效果
    ```
     Card(
          margin: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
                  child: Image.network(value["imageurl"],fit: BoxFit.cover,)),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageurl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(value["author"]),
              )
            ],
          )
    ```
    + AspectRatio实现子元素的宽高比，参考对象为父容器的宽
    ```
     AspectRatio(
                  aspectRatio: 16.0 / 9.0, //AspectRatio控件控制子元素的宽高比
                  child: Image.network(value["imageurl"],fit: BoxFit.cover,))
    ```
