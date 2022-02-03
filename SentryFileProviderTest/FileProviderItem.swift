//
//  FileProviderItem.swift
//  SentryFileProviderTest
//
//  Created by Johann Behrens on 03/02/2022.
//

import FileProvider
import UniformTypeIdentifiers

class FileProviderItem: NSObject, NSFileProviderItem {

    // TODO: implement an initializer to create an item from your extension's backing model
    // TODO: implement the accessors to return the values from your extension's backing model
    
    var itemIdentifier: NSFileProviderItemIdentifier {
        return NSFileProviderItemIdentifier("")
    }
    
    var parentItemIdentifier: NSFileProviderItemIdentifier {
        return NSFileProviderItemIdentifier("")
    }
    
    var capabilities: NSFileProviderItemCapabilities {
        return [.allowsReading, .allowsWriting, .allowsRenaming, .allowsReparenting, .allowsTrashing, .allowsDeleting]
    }
    
    var filename: String {
        return ""
    }
    
    var contentType: UTType {
        return itemIdentifier == NSFileProviderItemIdentifier.rootContainer ? .folder : .plainText
    }
    
}
