

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: TransferModeDetails
        Used By: Payment
    */
    class TransferModeDetails: Codable {
        
        public var items: [TransferItemsDetails]
        
        public var displayName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String, items: [TransferItemsDetails]) {
            
            self.items = items
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            items = try container.decode([TransferItemsDetails].self, forKey: .items)
            
            
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}
