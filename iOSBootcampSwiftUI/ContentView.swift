//
//  ContentView.swift
//  iOSBootcampSwiftUI
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

struct ContentView: View {
    
    typealias ExampleViews = [(AnyView, String, String)]
    
    @State private var searchterm: String = ""
    
    var options: ExampleViews = [
        (AnyView(NavigationButtonClick()), "Navigation Simple", "Navigation based on Button click"),
        (AnyView(PassDataFromList()), "Passing Data from List", "how to pass data to a detail view"),
        (AnyView(ModalSheet()), "Sheet with Modal", "Show a view with environment dismiss"),
        (AnyView(NavigationProgrammatically()), "NavigationProgrammatically", "Navigate other view after 2 seconds"),
        (AnyView(PassingData()), "Passing Data", "Different types of data"),
        (AnyView(DownloadWithCombine()), "Download with combine", "From fake API"),
        (AnyView(PullToRefreshDemo()), "Pull To Refresh Demo", "Implementing a refreshable"),
        (AnyView(DisplayItemsInList()), "Display Items In List", "Numbers, Custom Objects Indices"),
        (AnyView(FormDemo()), "Form Demo", "Simple form with alert and func to validate"),
        (AnyView(RowStyleInList()), "Row Style in List", "Simple form with alert and func to validate"),
        (AnyView(GeometryReaderStacks()), "Geometry Reader Layout", "Simple example of Geometry Reader"),
        (AnyView(AddingMovingRemovingItems()), "Adding Moving And Removing", "Items in the list"),
        (AnyView(SearchItemsList()), "Search items in list", "With searchable and onChange"),
        (AnyView(AutoScrollListDemo()), "Auto Scroll List", "ScrollView Reader"),
        (AnyView(Images()), "Images",""),
        (AnyView(PinnedViews()), "PinnedViews",""),
        (AnyView(Grids()), "Grids",""),
        (AnyView(DatePickerDemo()), "Date Picker Demo",""),
        (AnyView(ObservedObjectDemo()), "Observed Object","Misma referencia al ViewModel de State Object"),
        (AnyView(StateObjectDemo()), "State Object","Misma referencia al ViewModel de Observed Object"),
        (AnyView(Colors()), "Colors","RadialGradient, AngularGradient and Gradient"),
        (AnyView(Buttons()), "Buttons",""),
        (AnyView(HeroAnimations()), "Animation Geometry",""),
        (AnyView(OnChangeModifierDemo()), "OnChange & AppStorage ","Changing Background with AppStorage"),
        (AnyView(Animation()), "Animation",""),
        (AnyView(Icons()), "Icons",""),
        (AnyView(Icons()), "Backgroud/Overlays",""),
        (AnyView(MagnifyView()), "MagnifyView",""),
        (AnyView(RotateView()), "Rotation View",""),
        (AnyView(DragView()), "Drag View",""),
        (AnyView(RotateAnimation3D()), "Rotation 3D View",""),
        (AnyView(PassDataFromChildToParent()), "Pass Data with Sheet", "From Child To Parent"),
        (AnyView(NavigationMultipleViews()), "Navigation to Multiple Views", "Using Navigation View and Navigation Link"),
        (AnyView(MultipleNavigationValueTypes()), "Multiple Navigation", "Based on Value Types"),
        (AnyView(AlertsDemo()), "Show Alerts", "Custom alert inside a function"),
        (AnyView(MultipleLists()), "Multiple Lists", "Two list same destination"),
        (AnyView(FullScreenCoverDemo()), "Navigation with FullScreenCover", "Using Binding and Picker"),
        (AnyView(NavigationStackAndSheet()), "Navigation with sheet and NavigationView", "Adding Toolbar items in detail view"),
        
        (AnyView(TaskListView()), "Task List View", "ObservedObject , ObservableObject, Published"),
        (AnyView(SegmentedControlDemo()), "Segmented Controls", "Different Styles"),
        (AnyView(AlertItemDemo()), "Alert Item Demo", "Differents Alerts"),
        (AnyView(SearchbarDemo()), "Search Bar", "With async await from API"),
        (AnyView(WebViewDemo()), "WebView", "Using Webkit with UIViewRepresentable"),
        (AnyView(TabViewDemo()), "TabViewDemo", "Using 5 ways of backgrounds"),
        (AnyView(MainTabView()), "CustomTabView", "Like TitTok style"),
        (AnyView(LazyHGridDemo()), "LazyHGrid", "Similar to Horizontal CollectionView"),
        (AnyView(SafariServicesDemo()), "Safari Services", "And Link to open Safari Browser"),
        (AnyView(FeedbackView()), "Feedback View and Dark Mode", "Using sheet and Safari Services to show"),
        (AnyView(TextFieldModifiersDemo()), "TextField in LoginView", "Using modifiers and divider"),
        (AnyView(SettingsScreen()), "Settings Screen", "Using Form, Header, footer and Sections"),
        (AnyView(SendEmailDemo()), "Send Email Demo", "Using MessageUI and extensions"),
        (AnyView(PhotosUIDemo()), "PhotosUI", "Image Picker Controller"),
        (AnyView(CustomSearchBarDemo()), "CustomSearchBarDemo", "Using TextField and Binding text with onchange"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollViewReader { proxy in
                List {
                    SearchBar(searchTerm: $searchterm)
                        .listRowInsets(EdgeInsets(top: .zero, leading: .zero, bottom: .zero, trailing: .zero))
                        .listRowSeparator(.hidden)
                    
                    ForEach(filteredOptions(), id: \.1) { current in
                        
                        NavigationLink(destination: current.0
                                       , label: {
                            VStack(alignment: .leading) {
                                Text(current.1)
                                    .font(.headline)
                                Text(current.2)
                                    .font(.subheadline)
                            }
                        })
                    }
                }
                .onAppear {
                    proxy.scrollTo("Content", anchor: .top)
                }
                .animation(.linear, value: searchterm)
                .listStyle(.plain)
            }
            .navigationTitle("iOS Bootcamp SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func filteredOptions() -> ExampleViews {
        options.filter { (_, name, description) in
                guard !searchterm.isEmpty else { return true }
                return (name + description)
                .lowercased()
                .contains(searchterm.lowercased())
            }
        .sorted(by: { $0.1 < $1.1 })
        }
}

struct SearchBar: View {
    @Binding var searchTerm: String
    let backgroundColor : Color = Color.teal
    
    var body: some View {
        VStack(spacing: .zero) {
            ZStack {
                TextField("Filtrar", text: $searchTerm)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                //Clear Button
                HStack {
                    Spacer()
                    Button {
                        withAnimation {
                            searchTerm.removeAll()
                        }
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                            .padding()
                    }
                    
                    .frame(width: 50, height: 50)
                }
            }
            .padding()
            .background(backgroundColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
