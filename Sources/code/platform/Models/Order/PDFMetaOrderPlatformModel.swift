

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PDFMeta
        Used By: Order
    */

    class PDFMeta: Codable {
        
        
        public var consent: String?
        
        public var mediaUpdates: [ManifestMediaUpdate]?
        

        public enum CodingKeys: String, CodingKey {
            
            case consent = "consent"
            
            case mediaUpdates = "media_updates"
            
        }

        public init(consent: String? = nil, mediaUpdates: [ManifestMediaUpdate]? = nil) {
            
            self.consent = consent
            
            self.mediaUpdates = mediaUpdates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    consent = try container.decode(String.self, forKey: .consent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mediaUpdates = try container.decode([ManifestMediaUpdate].self, forKey: .mediaUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(consent, forKey: .consent)
            
            
            
            
            try? container.encodeIfPresent(mediaUpdates, forKey: .mediaUpdates)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PDFMeta
        Used By: Order
    */

    class PDFMeta: Codable {
        
        
        public var consent: String?
        
        public var mediaUpdates: [ManifestMediaUpdate]?
        

        public enum CodingKeys: String, CodingKey {
            
            case consent = "consent"
            
            case mediaUpdates = "media_updates"
            
        }

        public init(consent: String? = nil, mediaUpdates: [ManifestMediaUpdate]? = nil) {
            
            self.consent = consent
            
            self.mediaUpdates = mediaUpdates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    consent = try container.decode(String.self, forKey: .consent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mediaUpdates = try container.decode([ManifestMediaUpdate].self, forKey: .mediaUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(consent, forKey: .consent)
            
            
            
            
            try? container.encodeIfPresent(mediaUpdates, forKey: .mediaUpdates)
            
            
        }
        
    }
}


