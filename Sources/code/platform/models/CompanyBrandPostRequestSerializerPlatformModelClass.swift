

import Foundation
public extension PlatformClient {
    /*
        Model: CompanyBrandPostRequestSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandPostRequestSerializer: Codable {
        
        
        public var company: Int
        
        public var uid: Int?
        
        public var brands: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case company = "company"
            
            case uid = "uid"
            
            case brands = "brands"
            
        }

        public init(brands: [Int], company: Int, uid: Int? = nil) {
            
            self.company = company
            
            self.uid = uid
            
            self.brands = brands
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                company = try container.decode(Int.self, forKey: .company)
                
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brands = try container.decode([Int].self, forKey: .brands)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
        }
        
    }
}
