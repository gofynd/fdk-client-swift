

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: StoreRequest
        Used By: Configuration
    */

    class StoreRequest: Codable {
        
        
        public var companies: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case companies = "companies"
            
        }

        public init(companies: [Int]? = nil) {
            
            self.companies = companies
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companies = try container.decode([Int].self, forKey: .companies)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companies, forKey: .companies)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: StoreRequest
        Used By: Configuration
    */

    class StoreRequest: Codable {
        
        
        public var companies: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case companies = "companies"
            
        }

        public init(companies: [Int]? = nil) {
            
            self.companies = companies
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companies = try container.decode([Int].self, forKey: .companies)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companies, forKey: .companies)
            
            
        }
        
    }
}


