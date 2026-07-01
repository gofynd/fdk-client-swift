

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: CountryResult
        Used By: Logistic
    */
    class CountryResult: Codable {
        
        public var results: [CountryEntity]?
        

        public enum CodingKeys: String, CodingKey {
            
            case results = "results"
            
        }

        public init(results: [CountryEntity]? = nil) {
            
            self.results = results
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                results = try container.decode([CountryEntity].self, forKey: .results)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
        }
        
    }
}
