import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    //   是否显示已经收藏按钮的状态
    @State private var showFavoritesOnly = false
    //  筛选对应数据。默认全部
    @State private var filter = FilterCategory.all
    //
    @State private var selectLandmark: Landmark?
    
    //   筛选出已经收藏的数据
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmarks in
            (!showFavoritesOnly || landmarks.isFavorite) &&
                (filter == .all || filter.rawValue == landmarks.category.rawValue)
        }
        
    }
    var title: String {
        let title = filter == .all ? "Landmarks" : filter.rawValue
        return showFavoritesOnly ? "Favorite \(title)" : title
    }
    
    var index : Int? {
        modelData.landmarks.firstIndex(where: {$0.id == selectLandmark?.id})
    }
    
    enum FilterCategory: String, CaseIterable, Identifiable {
        case all = "All"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
        var id: FilterCategory { self }
    }
    
    
    var body: some View {
        NavigationView {
            List(selection: $selectLandmark){
                ForEach(filteredLandmarks) {landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                    .tag(landmark)
                }
            }
            .navigationTitle(title)
            .frame(minWidth: 300)
            .toolbar{
                ToolbarItem {
                    
                    Menu {
                        Picker("Category", selection: $filter) {
                            ForEach(FilterCategory.allCases) { category in
                                Text(category.rawValue).tag(category)
                            }
                        }
                        .pickerStyle(InlinePickerStyle())
                        Toggle(isOn: $showFavoritesOnly) {
                            Label("已收藏", systemImage: "star.fill")
                        }
                    } label: {
                        Label("Filter", systemImage: "slider.horizontal.3")
                    }
                }
            }
            Text("Select a Landmark")
        }
        .focusedValue(\.selectedLandmark, $modelData.landmarks[index ?? 0])
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
