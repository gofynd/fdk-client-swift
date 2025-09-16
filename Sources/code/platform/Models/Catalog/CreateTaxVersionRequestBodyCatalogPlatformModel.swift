

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateTaxVersionRequestBody
        Used By: Catalog
    */

    class CreateTaxVersionRequestBody: Codable {
        
        
        public var components: [TaxComponent]
        
        public var applicableDate: String
        

        public enum CodingKeys: String, CodingKey {
            
            case components = "components"
            
            case applicableDate = "applicable_date"
            
        }

        public init(applicableDate: String, components: [TaxComponent]) {
            
            self.components = components
            
            self.applicableDate = applicableDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                components = try container.decode([TaxComponent].self, forKey: .components)
                
            
            
            
                applicableDate = try container.decode(String.self, forKey: .applicableDate)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
            
            
            try? container.encodeIfPresent(applicableDate, forKey: .applicableDate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateTaxVersionRequestBody
        Used By: Catalog
    */

    class CreateTaxVersionRequestBody: Codable {
        
        
        public var components: [TaxComponent]
        
        public var applicableDate: String
        

        public enum CodingKeys: String, CodingKey {
            
            case components = "components"
            
            case applicableDate = "applicable_date"
            
        }

        public init(applicableDate: String, components: [TaxComponent]) {
            
            self.components = components
            
            self.applicableDate = applicableDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                components = try container.decode([TaxComponent].self, forKey: .components)
                
            
            
            
                applicableDate = try container.decode(String.self, forKey: .applicableDate)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
            
            
            try? container.encodeIfPresent(applicableDate, forKey: .applicableDate)
            
            
        }
        
    }
}


