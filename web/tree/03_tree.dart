import '../../lib/devoxxfr_2013.dart';

void main() {
  final TreeConfig treeNode = new TreeConfig((Item item) => item.value, (Item item) => item.children)
    ..conditionalOnClick = (dynamic data, TreeNodeDataWrapper wrapper) {
      if (!wrapper.hasChildren) {
        return (MouseEvent e, Item data, TreeNodeDataWrapper wrapper) => window.alert(data.value);
      }
    };
    
  new Tree()
    ..addTreeConfig(treeNode)
    ..data = items
    //..animate = true
    ..sortable = true
    ..addTo('body', 'afterBegin');
}
