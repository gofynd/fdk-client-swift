

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DPDetailsData
        Used By: Order
    */

    class DPDetailsData: Codable {
        
        
        public var pincode: String?
        
        public var trackUrl: String?
        
        public var ewayBillId: String?
        
        public var id: Int?
        
        public var country: String?
        
        public var awbNo: String?
        
        public var gstTag: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case trackUrl = "track_url"
            
            case ewayBillId = "eway_bill_id"
            
            case id = "id"
            
            case country = "country"
            
            case awbNo = "awb_no"
            
            case gstTag = "gst_tag"
            
            case name = "name"
            
        }

        public init(awbNo: String? = nil, country: String? = nil, ewayBillId: String? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            
            self.pincode = pincode
            
            self.trackUrl = trackUrl
            
            self.ewayBillId = ewayBillId
            
            self.id = id
            
            self.country = country
            
            self.awbNo = awbNo
            
            self.gstTag = gstTag
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackUrl = try container.decode(String.self, forKey: .trackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillId = try container.decode(String.self, forKey: .ewayBillId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNo = try container.decode(String.self, forKey: .awbNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encode(trackUrl, forKey: .trackUrl)
            
            
            
            
            try? container.encode(ewayBillId, forKey: .ewayBillId)
            
            
            
            
            try? container.encode(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encode(awbNo, forKey: .awbNo)
            
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DPDetailsData
        Used By: Order
    */

    class DPDetailsData: Codable {
        
        
        public var pincode: String?
        
        public var trackUrl: String?
        
        public var ewayBillId: String?
        
        public var id: Int?
        
        public var country: String?
        
        public var awbNo: String?
        
        public var gstTag: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case trackUrl = "track_url"
            
            case ewayBillId = "eway_bill_id"
            
            case id = "id"
            
            case country = "country"
            
            case awbNo = "awb_no"
            
            case gstTag = "gst_tag"
            
            case name = "name"
            
        }

        public init(awbNo: String? = nil, country: String? = nil, ewayBillId: String? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            
            self.pincode = pincode
            
            self.trackUrl = trackUrl
            
            self.ewayBillId = ewayBillId
            
            self.id = id
            
            self.country = country
            
            self.awbNo = awbNo
            
            self.gstTag = gstTag
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackUrl = try container.decode(String.self, forKey: .trackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillId = try container.decode(String.self, forKey: .ewayBillId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNo = try container.decode(String.self, forKey: .awbNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encode(trackUrl, forKey: .trackUrl)
            
            
            
            
            try? container.encode(ewayBillId, forKey: .ewayBillId)
            
            
            
            
            try? container.encode(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encode(awbNo, forKey: .awbNo)
            
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
        }
        
    }
}


