

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: SEOSitemap
        Used By: Theme
    */
    class SEOSitemap: Codable {
        
        public var modifiedOn: String?
        
        public var priority: Double?
        
        public var frequency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedOn = "modified_on"
            
            case priority = "priority"
            
            case frequency = "frequency"
            
        }

        public init(frequency: String? = nil, modifiedOn: String? = nil, priority: Double? = nil) {
            
            self.modifiedOn = modifiedOn
            
            self.priority = priority
            
            self.frequency = frequency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                priority = try container.decode(Double.self, forKey: .priority)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                frequency = try container.decode(String.self, forKey: .frequency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            try? container.encodeIfPresent(frequency, forKey: .frequency)
            
            
        }
        
    }
}
