import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
//   是否显示已经收藏按钮的状态
    @State private var showFavoritesOnly = false
    
//   筛选出已经收藏的数据
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmarks in
            (!showFavoritesOnly || landmarks.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("已收藏")
                }
                ForEach(filteredLandmarks) {landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
           
           
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
