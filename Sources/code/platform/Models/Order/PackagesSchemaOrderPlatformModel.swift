

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PackagesSchema
        Used By: Order
    */

    class PackagesSchema: Codable {
        
        
        public var packages: [PackageSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case packages = "packages"
            
        }

        public init(packages: [PackageSchema]) {
            
            self.packages = packages
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                packages = try container.decode([PackageSchema].self, forKey: .packages)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(packages, forKey: .packages)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PackagesSchema
        Used By: Order
    */

    class PackagesSchema: Codable {
        
        
        public var packages: [PackageSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case packages = "packages"
            
        }

        public init(packages: [PackageSchema]) {
            
            self.packages = packages
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                packages = try container.decode([PackageSchema].self, forKey: .packages)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(packages, forKey: .packages)
            
            
        }
        
    }
}


