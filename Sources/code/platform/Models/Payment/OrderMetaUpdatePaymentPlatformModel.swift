

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OrderMetaUpdate
        Used By: Payment
    */

    class OrderMetaUpdate: Codable {
        
        
        public var panNo: String
        

        public enum CodingKeys: String, CodingKey {
            
            case panNo = "pan_no"
            
        }

        public init(panNo: String) {
            
            self.panNo = panNo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                panNo = try container.decode(String.self, forKey: .panNo)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OrderMetaUpdate
        Used By: Payment
    */

    class OrderMetaUpdate: Codable {
        
        
        public var panNo: String
        

        public enum CodingKeys: String, CodingKey {
            
            case panNo = "pan_no"
            
        }

        public init(panNo: String) {
            
            self.panNo = panNo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                panNo = try container.decode(String.self, forKey: .panNo)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
        }
        
    }
}


