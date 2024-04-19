

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: FeedbackForm
        Used By: Lead
    */
    class FeedbackForm: Codable {
        
        public var inputs: [String: Any]?
        
        public var title: String?
        
        public var timestamps: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case inputs = "inputs"
            
            case title = "title"
            
            case timestamps = "timestamps"
            
        }

        public init(inputs: [String: Any]? = nil, timestamps: [String: Any]? = nil, title: String? = nil) {
            
            self.inputs = inputs
            
            self.title = title
            
            self.timestamps = timestamps
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                inputs = try container.decode([String: Any].self, forKey: .inputs)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                title = try container.decode(String.self, forKey: .title)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                timestamps = try container.decode([String: Any].self, forKey: .timestamps)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(timestamps, forKey: .timestamps)
            
            
        }
        
    }
}
