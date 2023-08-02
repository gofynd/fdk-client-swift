

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GenerateReportFilters
        Used By: Finance
    */

    class GenerateReportFilters: Codable {
        
        
        public var company: [String]?
        
        public var brand: [String]?
        
        public var channel: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case company = "company"
            
            case brand = "brand"
            
            case channel = "channel"
            
        }

        public init(brand: [String]? = nil, channel: [String]? = nil, company: [String]? = nil) {
            
            self.company = company
            
            self.brand = brand
            
            self.channel = channel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    company = try container.decode([String].self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode([String].self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode([String].self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
        }
        
    }
}




