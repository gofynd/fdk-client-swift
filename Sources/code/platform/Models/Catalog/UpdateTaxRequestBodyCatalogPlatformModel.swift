

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpdateTaxRequestBody
        Used By: Catalog
    */

    class UpdateTaxRequestBody: Codable {
        
        
        public var status: TaxStatusEnum
        
        public var isDefault: Bool
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case isDefault = "is_default"
            
            case name = "name"
            
        }

        public init(isDefault: Bool, name: String, status: TaxStatusEnum) {
            
            self.status = status
            
            self.isDefault = isDefault
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(TaxStatusEnum.self, forKey: .status)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpdateTaxRequestBody
        Used By: Catalog
    */

    class UpdateTaxRequestBody: Codable {
        
        
        public var status: TaxStatusEnum
        
        public var isDefault: Bool
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case isDefault = "is_default"
            
            case name = "name"
            
        }

        public init(isDefault: Bool, name: String, status: TaxStatusEnum) {
            
            self.status = status
            
            self.isDefault = isDefault
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(TaxStatusEnum.self, forKey: .status)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


