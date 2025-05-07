

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: KwargsUpiQrcode
        Used By: FileStorage
    */

    class KwargsUpiQrcode: Codable {
        
        
        public var qrData: String?
        
        public var qrUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case qrData = "qr_data"
            
            case qrUrl = "qr_url"
            
        }

        public init(qrData: String? = nil, qrUrl: String? = nil) {
            
            self.qrData = qrData
            
            self.qrUrl = qrUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    qrData = try container.decode(String.self, forKey: .qrData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qrUrl = try container.decode(String.self, forKey: .qrUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(qrData, forKey: .qrData)
            
            
            
            
            try? container.encodeIfPresent(qrUrl, forKey: .qrUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: KwargsUpiQrcode
        Used By: FileStorage
    */

    class KwargsUpiQrcode: Codable {
        
        
        public var qrData: String?
        
        public var qrUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case qrData = "qr_data"
            
            case qrUrl = "qr_url"
            
        }

        public init(qrData: String? = nil, qrUrl: String? = nil) {
            
            self.qrData = qrData
            
            self.qrUrl = qrUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    qrData = try container.decode(String.self, forKey: .qrData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qrUrl = try container.decode(String.self, forKey: .qrUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(qrData, forKey: .qrData)
            
            
            
            
            try? container.encodeIfPresent(qrUrl, forKey: .qrUrl)
            
            
        }
        
    }
}


