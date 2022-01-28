//
//  ListViewModel.swift
//  Clicks Egypt Task
//
//  Created by Ibrahim Mo Gedami on 28/01/2022.
//

import Foundation


class ListViewModel {
    
    var articalFullData: [Articles]?
    var articals: [Articles]?
    var success: (() -> Void)?
    var error: ((Error?) -> Void)?
    var refreshData: (() -> Void)?
    
    func getList(){
        Services.shared.GetData(url: Constants.articalListURL, parameters: nil, headers: Constants.header) { [weak self] (data: ArticalModel?,error: Error?) in
            guard let self = self else {return}
            if let error = error {
                self.error?(error)
                print(error.localizedDescription)
            }else{
                if let unwrappedData = data{
                    self.articals = unwrappedData.articles
                    self.articalFullData = unwrappedData.articles
                    self.success?()
                    print(unwrappedData)
                }
            }
        }
    }
    
    func getSearchItem(index: Int) {
        self.articals = []
        guard let item = articalFullData?[index] else {return}
        self.articals?.append(item)
        refreshData?()
    }
    
}
