

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: SchemeRulesFeatures
        Used By: Serviceability
    */

    class SchemeRulesFeatures: Codable {
        
        
        public var qualityCheck: Bool?
        
        public var quickResponseCode: Bool?
        
        public var eWaybill: Bool?
        
        public var multiPartShipments: Bool?
        
        public var flammable: Bool?
        
        public var hazmat: Bool?
        
        public var batteryOperated: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case qualityCheck = "quality_check"
            
            case quickResponseCode = "quick_response_code"
            
            case eWaybill = "e_waybill"
            
            case multiPartShipments = "multi_part_shipments"
            
            case flammable = "flammable"
            
            case hazmat = "hazmat"
            
            case batteryOperated = "battery_operated"
            
        }

        public init(batteryOperated: Bool? = nil, eWaybill: Bool? = nil, flammable: Bool? = nil, hazmat: Bool? = nil, multiPartShipments: Bool? = nil, qualityCheck: Bool? = nil, quickResponseCode: Bool? = nil) {
            
            self.qualityCheck = qualityCheck
            
            self.quickResponseCode = quickResponseCode
            
            self.eWaybill = eWaybill
            
            self.multiPartShipments = multiPartShipments
            
            self.flammable = flammable
            
            self.hazmat = hazmat
            
            self.batteryOperated = batteryOperated
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    qualityCheck = try container.decode(Bool.self, forKey: .qualityCheck)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quickResponseCode = try container.decode(Bool.self, forKey: .quickResponseCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eWaybill = try container.decode(Bool.self, forKey: .eWaybill)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiPartShipments = try container.decode(Bool.self, forKey: .multiPartShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    flammable = try container.decode(Bool.self, forKey: .flammable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hazmat = try container.decode(Bool.self, forKey: .hazmat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    batteryOperated = try container.decode(Bool.self, forKey: .batteryOperated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(qualityCheck, forKey: .qualityCheck)
            
            
            
            
            try? container.encodeIfPresent(quickResponseCode, forKey: .quickResponseCode)
            
            
            
            
            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
            
            
            
            
            try? container.encodeIfPresent(multiPartShipments, forKey: .multiPartShipments)
            
            
            
            
            try? container.encodeIfPresent(flammable, forKey: .flammable)
            
            
            
            
            try? container.encodeIfPresent(hazmat, forKey: .hazmat)
            
            
            
            
            try? container.encodeIfPresent(batteryOperated, forKey: .batteryOperated)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: SchemeRulesFeatures
        Used By: Serviceability
    */

    class SchemeRulesFeatures: Codable {
        
        
        public var qualityCheck: Bool?
        
        public var quickResponseCode: Bool?
        
        public var eWaybill: Bool?
        
        public var multiPartShipments: Bool?
        
        public var flammable: Bool?
        
        public var hazmat: Bool?
        
        public var batteryOperated: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case qualityCheck = "quality_check"
            
            case quickResponseCode = "quick_response_code"
            
            case eWaybill = "e_waybill"
            
            case multiPartShipments = "multi_part_shipments"
            
            case flammable = "flammable"
            
            case hazmat = "hazmat"
            
            case batteryOperated = "battery_operated"
            
        }

        public init(batteryOperated: Bool? = nil, eWaybill: Bool? = nil, flammable: Bool? = nil, hazmat: Bool? = nil, multiPartShipments: Bool? = nil, qualityCheck: Bool? = nil, quickResponseCode: Bool? = nil) {
            
            self.qualityCheck = qualityCheck
            
            self.quickResponseCode = quickResponseCode
            
            self.eWaybill = eWaybill
            
            self.multiPartShipments = multiPartShipments
            
            self.flammable = flammable
            
            self.hazmat = hazmat
            
            self.batteryOperated = batteryOperated
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    qualityCheck = try container.decode(Bool.self, forKey: .qualityCheck)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quickResponseCode = try container.decode(Bool.self, forKey: .quickResponseCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eWaybill = try container.decode(Bool.self, forKey: .eWaybill)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiPartShipments = try container.decode(Bool.self, forKey: .multiPartShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    flammable = try container.decode(Bool.self, forKey: .flammable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hazmat = try container.decode(Bool.self, forKey: .hazmat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    batteryOperated = try container.decode(Bool.self, forKey: .batteryOperated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(qualityCheck, forKey: .qualityCheck)
            
            
            
            
            try? container.encodeIfPresent(quickResponseCode, forKey: .quickResponseCode)
            
            
            
            
            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
            
            
            
            
            try? container.encodeIfPresent(multiPartShipments, forKey: .multiPartShipments)
            
            
            
            
            try? container.encodeIfPresent(flammable, forKey: .flammable)
            
            
            
            
            try? container.encodeIfPresent(hazmat, forKey: .hazmat)
            
            
            
            
            try? container.encodeIfPresent(batteryOperated, forKey: .batteryOperated)
            
            
        }
        
    }
}


