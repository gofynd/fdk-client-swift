

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ArticleReturnReason
        Used By: Logistic
    */
    class ArticleReturnReason: Codable {
        
        public var qcType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case qcType = "qc_type"
            
        }

        public init(qcType: [String]? = nil) {
            
            self.qcType = qcType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                qcType = try container.decode([String].self, forKey: .qcType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(qcType, forKey: .qcType)
            
            
        }
        
    }
}
