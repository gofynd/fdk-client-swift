

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: DownloadCreditDebitNote
        Used By: Finance
    */

    class DownloadCreditDebitNote: Codable {
        
        
        public var noteId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case noteId = "note_id"
            
        }

        public init(noteId: [String]? = nil) {
            
            self.noteId = noteId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    noteId = try container.decode([String].self, forKey: .noteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(noteId, forKey: .noteId)
            
            
        }
        
    }
}




