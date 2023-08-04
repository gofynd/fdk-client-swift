

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: DummyTemplateDataPayload
        Used By: FileStorage
    */

    class DummyTemplateDataPayload: Codable {
        
        
        public var currencyCode: String
        
        public var shipmentId: String
        
        public var amountToBeCollected: Int
        
        public var amountPaid: Int?
        
        public var awbNumberBarcode: String?
        
        public var signedQrcode: String?
        
        public var shipmentIdBarcode: String?
        
        public var upiQrcode: String?
        
        public var isSelfShip: Bool?
        
        public var isSelfPickup: Bool?
        
        public var isTest: Bool?
        
        public var image: DummyTemplateDataPayloadImage?
        
        public var payments: [payments]?
        
        public var invoiceDetail: [String: Any]?
        
        public var companyDetail: companyDetail?
        
        public var storeDetail: storeDetail?
        
        public var customerShippingDetail: customerShippingDetail?
        
        public var returnDetail: returnDetail?
        
        public var productTable: productTable?
        
        public var taxTable: taxTable?
        
        public var declarationTexts: [String]?
        
        public var registeredCompanyDetail: registeredCompanyDetail?
        
        public var disclaimer: String?
        
        public var meta: [String: Any]?
        
        public var deliveryPartnerDetail: [String: Any]?
        
        public var customerBillingDetail: customerBillingDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case shipmentId = "shipment_id"
            
            case amountToBeCollected = "amount_to_be_collected"
            
            case amountPaid = "amount_paid"
            
            case awbNumberBarcode = "awb_number_barcode"
            
            case signedQrcode = "signed_qrcode"
            
            case shipmentIdBarcode = "shipment_id_barcode"
            
            case upiQrcode = "upi_qrcode"
            
            case isSelfShip = "is_self_ship"
            
            case isSelfPickup = "is_self_pickup"
            
            case isTest = "is_test"
            
            case image = "image"
            
            case payments = "payments"
            
            case invoiceDetail = "invoice_detail"
            
            case companyDetail = "company_detail"
            
            case storeDetail = "store_detail"
            
            case customerShippingDetail = "customer_shipping_detail"
            
            case returnDetail = "return_detail"
            
            case productTable = "product_table"
            
            case taxTable = "tax_table"
            
            case declarationTexts = "declaration_texts"
            
            case registeredCompanyDetail = "registered_company_detail"
            
            case disclaimer = "disclaimer"
            
            case meta = "meta"
            
            case deliveryPartnerDetail = "delivery_partner_detail"
            
            case customerBillingDetail = "customer_billing_detail"
            
        }

        public init(amountPaid: Int? = nil, amountToBeCollected: Int, awbNumberBarcode: String? = nil, companyDetail: companyDetail? = nil, currencyCode: String, customerBillingDetail: customerBillingDetail? = nil, customerShippingDetail: customerShippingDetail? = nil, declarationTexts: [String]? = nil, deliveryPartnerDetail: [String: Any]? = nil, disclaimer: String? = nil, image: DummyTemplateDataPayloadImage? = nil, invoiceDetail: [String: Any]? = nil, isSelfPickup: Bool? = nil, isSelfShip: Bool? = nil, isTest: Bool? = nil, meta: [String: Any]? = nil, payments: [payments]? = nil, productTable: productTable? = nil, registeredCompanyDetail: registeredCompanyDetail? = nil, returnDetail: returnDetail? = nil, shipmentId: String, shipmentIdBarcode: String? = nil, signedQrcode: String? = nil, storeDetail: storeDetail? = nil, taxTable: taxTable? = nil, upiQrcode: String? = nil) {
            
            self.currencyCode = currencyCode
            
            self.shipmentId = shipmentId
            
            self.amountToBeCollected = amountToBeCollected
            
            self.amountPaid = amountPaid
            
            self.awbNumberBarcode = awbNumberBarcode
            
            self.signedQrcode = signedQrcode
            
            self.shipmentIdBarcode = shipmentIdBarcode
            
            self.upiQrcode = upiQrcode
            
            self.isSelfShip = isSelfShip
            
            self.isSelfPickup = isSelfPickup
            
            self.isTest = isTest
            
            self.image = image
            
            self.payments = payments
            
            self.invoiceDetail = invoiceDetail
            
            self.companyDetail = companyDetail
            
            self.storeDetail = storeDetail
            
            self.customerShippingDetail = customerShippingDetail
            
            self.returnDetail = returnDetail
            
            self.productTable = productTable
            
            self.taxTable = taxTable
            
            self.declarationTexts = declarationTexts
            
            self.registeredCompanyDetail = registeredCompanyDetail
            
            self.disclaimer = disclaimer
            
            self.meta = meta
            
            self.deliveryPartnerDetail = deliveryPartnerDetail
            
            self.customerBillingDetail = customerBillingDetail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                amountToBeCollected = try container.decode(Int.self, forKey: .amountToBeCollected)
                
            
            
            
                do {
                    amountPaid = try container.decode(Int.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumberBarcode = try container.decode(String.self, forKey: .awbNumberBarcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    signedQrcode = try container.decode(String.self, forKey: .signedQrcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentIdBarcode = try container.decode(String.self, forKey: .shipmentIdBarcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiQrcode = try container.decode(String.self, forKey: .upiQrcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfPickup = try container.decode(Bool.self, forKey: .isSelfPickup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isTest = try container.decode(Bool.self, forKey: .isTest)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(DummyTemplateDataPayloadImage.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([payments].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceDetail = try container.decode([String: Any].self, forKey: .invoiceDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDetail = try container.decode(companyDetail.self, forKey: .companyDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeDetail = try container.decode(storeDetail.self, forKey: .storeDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerShippingDetail = try container.decode(customerShippingDetail.self, forKey: .customerShippingDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnDetail = try container.decode(returnDetail.self, forKey: .returnDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productTable = try container.decode(productTable.self, forKey: .productTable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxTable = try container.decode(taxTable.self, forKey: .taxTable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    declarationTexts = try container.decode([String].self, forKey: .declarationTexts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    registeredCompanyDetail = try container.decode(registeredCompanyDetail.self, forKey: .registeredCompanyDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    disclaimer = try container.decode(String.self, forKey: .disclaimer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryPartnerDetail = try container.decode([String: Any].self, forKey: .deliveryPartnerDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerBillingDetail = try container.decode(customerBillingDetail.self, forKey: .customerBillingDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(amountToBeCollected, forKey: .amountToBeCollected)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(awbNumberBarcode, forKey: .awbNumberBarcode)
            
            
            
            
            try? container.encodeIfPresent(signedQrcode, forKey: .signedQrcode)
            
            
            
            
            try? container.encodeIfPresent(shipmentIdBarcode, forKey: .shipmentIdBarcode)
            
            
            
            
            try? container.encodeIfPresent(upiQrcode, forKey: .upiQrcode)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(isSelfPickup, forKey: .isSelfPickup)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(invoiceDetail, forKey: .invoiceDetail)
            
            
            
            
            try? container.encodeIfPresent(companyDetail, forKey: .companyDetail)
            
            
            
            
            try? container.encodeIfPresent(storeDetail, forKey: .storeDetail)
            
            
            
            
            try? container.encodeIfPresent(customerShippingDetail, forKey: .customerShippingDetail)
            
            
            
            
            try? container.encodeIfPresent(returnDetail, forKey: .returnDetail)
            
            
            
            
            try? container.encodeIfPresent(productTable, forKey: .productTable)
            
            
            
            
            try? container.encodeIfPresent(taxTable, forKey: .taxTable)
            
            
            
            
            try? container.encodeIfPresent(declarationTexts, forKey: .declarationTexts)
            
            
            
            
            try? container.encodeIfPresent(registeredCompanyDetail, forKey: .registeredCompanyDetail)
            
            
            
            
            try? container.encodeIfPresent(disclaimer, forKey: .disclaimer)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(deliveryPartnerDetail, forKey: .deliveryPartnerDetail)
            
            
            
            
            try? container.encodeIfPresent(customerBillingDetail, forKey: .customerBillingDetail)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: DummyTemplateDataPayload
        Used By: FileStorage
    */

    class DummyTemplateDataPayload: Codable {
        
        
        public var currencyCode: String
        
        public var shipmentId: String
        
        public var amountToBeCollected: Int
        
        public var amountPaid: Int?
        
        public var awbNumberBarcode: String?
        
        public var signedQrcode: String?
        
        public var shipmentIdBarcode: String?
        
        public var upiQrcode: String?
        
        public var isSelfShip: Bool?
        
        public var isSelfPickup: Bool?
        
        public var isTest: Bool?
        
        public var image: DummyTemplateDataPayloadImage?
        
        public var payments: [payments]?
        
        public var invoiceDetail: [String: Any]?
        
        public var companyDetail: companyDetail?
        
        public var storeDetail: storeDetail?
        
        public var customerShippingDetail: customerShippingDetail?
        
        public var returnDetail: returnDetail?
        
        public var productTable: productTable?
        
        public var taxTable: taxTable?
        
        public var declarationTexts: [String]?
        
        public var registeredCompanyDetail: registeredCompanyDetail?
        
        public var disclaimer: String?
        
        public var meta: [String: Any]?
        
        public var deliveryPartnerDetail: [String: Any]?
        
        public var customerBillingDetail: customerBillingDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case shipmentId = "shipment_id"
            
            case amountToBeCollected = "amount_to_be_collected"
            
            case amountPaid = "amount_paid"
            
            case awbNumberBarcode = "awb_number_barcode"
            
            case signedQrcode = "signed_qrcode"
            
            case shipmentIdBarcode = "shipment_id_barcode"
            
            case upiQrcode = "upi_qrcode"
            
            case isSelfShip = "is_self_ship"
            
            case isSelfPickup = "is_self_pickup"
            
            case isTest = "is_test"
            
            case image = "image"
            
            case payments = "payments"
            
            case invoiceDetail = "invoice_detail"
            
            case companyDetail = "company_detail"
            
            case storeDetail = "store_detail"
            
            case customerShippingDetail = "customer_shipping_detail"
            
            case returnDetail = "return_detail"
            
            case productTable = "product_table"
            
            case taxTable = "tax_table"
            
            case declarationTexts = "declaration_texts"
            
            case registeredCompanyDetail = "registered_company_detail"
            
            case disclaimer = "disclaimer"
            
            case meta = "meta"
            
            case deliveryPartnerDetail = "delivery_partner_detail"
            
            case customerBillingDetail = "customer_billing_detail"
            
        }

        public init(amountPaid: Int? = nil, amountToBeCollected: Int, awbNumberBarcode: String? = nil, companyDetail: companyDetail? = nil, currencyCode: String, customerBillingDetail: customerBillingDetail? = nil, customerShippingDetail: customerShippingDetail? = nil, declarationTexts: [String]? = nil, deliveryPartnerDetail: [String: Any]? = nil, disclaimer: String? = nil, image: DummyTemplateDataPayloadImage? = nil, invoiceDetail: [String: Any]? = nil, isSelfPickup: Bool? = nil, isSelfShip: Bool? = nil, isTest: Bool? = nil, meta: [String: Any]? = nil, payments: [payments]? = nil, productTable: productTable? = nil, registeredCompanyDetail: registeredCompanyDetail? = nil, returnDetail: returnDetail? = nil, shipmentId: String, shipmentIdBarcode: String? = nil, signedQrcode: String? = nil, storeDetail: storeDetail? = nil, taxTable: taxTable? = nil, upiQrcode: String? = nil) {
            
            self.currencyCode = currencyCode
            
            self.shipmentId = shipmentId
            
            self.amountToBeCollected = amountToBeCollected
            
            self.amountPaid = amountPaid
            
            self.awbNumberBarcode = awbNumberBarcode
            
            self.signedQrcode = signedQrcode
            
            self.shipmentIdBarcode = shipmentIdBarcode
            
            self.upiQrcode = upiQrcode
            
            self.isSelfShip = isSelfShip
            
            self.isSelfPickup = isSelfPickup
            
            self.isTest = isTest
            
            self.image = image
            
            self.payments = payments
            
            self.invoiceDetail = invoiceDetail
            
            self.companyDetail = companyDetail
            
            self.storeDetail = storeDetail
            
            self.customerShippingDetail = customerShippingDetail
            
            self.returnDetail = returnDetail
            
            self.productTable = productTable
            
            self.taxTable = taxTable
            
            self.declarationTexts = declarationTexts
            
            self.registeredCompanyDetail = registeredCompanyDetail
            
            self.disclaimer = disclaimer
            
            self.meta = meta
            
            self.deliveryPartnerDetail = deliveryPartnerDetail
            
            self.customerBillingDetail = customerBillingDetail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                amountToBeCollected = try container.decode(Int.self, forKey: .amountToBeCollected)
                
            
            
            
                do {
                    amountPaid = try container.decode(Int.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumberBarcode = try container.decode(String.self, forKey: .awbNumberBarcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    signedQrcode = try container.decode(String.self, forKey: .signedQrcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentIdBarcode = try container.decode(String.self, forKey: .shipmentIdBarcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiQrcode = try container.decode(String.self, forKey: .upiQrcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfPickup = try container.decode(Bool.self, forKey: .isSelfPickup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isTest = try container.decode(Bool.self, forKey: .isTest)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(DummyTemplateDataPayloadImage.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([payments].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceDetail = try container.decode([String: Any].self, forKey: .invoiceDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDetail = try container.decode(companyDetail.self, forKey: .companyDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeDetail = try container.decode(storeDetail.self, forKey: .storeDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerShippingDetail = try container.decode(customerShippingDetail.self, forKey: .customerShippingDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnDetail = try container.decode(returnDetail.self, forKey: .returnDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productTable = try container.decode(productTable.self, forKey: .productTable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxTable = try container.decode(taxTable.self, forKey: .taxTable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    declarationTexts = try container.decode([String].self, forKey: .declarationTexts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    registeredCompanyDetail = try container.decode(registeredCompanyDetail.self, forKey: .registeredCompanyDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    disclaimer = try container.decode(String.self, forKey: .disclaimer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryPartnerDetail = try container.decode([String: Any].self, forKey: .deliveryPartnerDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerBillingDetail = try container.decode(customerBillingDetail.self, forKey: .customerBillingDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(amountToBeCollected, forKey: .amountToBeCollected)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(awbNumberBarcode, forKey: .awbNumberBarcode)
            
            
            
            
            try? container.encodeIfPresent(signedQrcode, forKey: .signedQrcode)
            
            
            
            
            try? container.encodeIfPresent(shipmentIdBarcode, forKey: .shipmentIdBarcode)
            
            
            
            
            try? container.encodeIfPresent(upiQrcode, forKey: .upiQrcode)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(isSelfPickup, forKey: .isSelfPickup)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(invoiceDetail, forKey: .invoiceDetail)
            
            
            
            
            try? container.encodeIfPresent(companyDetail, forKey: .companyDetail)
            
            
            
            
            try? container.encodeIfPresent(storeDetail, forKey: .storeDetail)
            
            
            
            
            try? container.encodeIfPresent(customerShippingDetail, forKey: .customerShippingDetail)
            
            
            
            
            try? container.encodeIfPresent(returnDetail, forKey: .returnDetail)
            
            
            
            
            try? container.encodeIfPresent(productTable, forKey: .productTable)
            
            
            
            
            try? container.encodeIfPresent(taxTable, forKey: .taxTable)
            
            
            
            
            try? container.encodeIfPresent(declarationTexts, forKey: .declarationTexts)
            
            
            
            
            try? container.encodeIfPresent(registeredCompanyDetail, forKey: .registeredCompanyDetail)
            
            
            
            
            try? container.encodeIfPresent(disclaimer, forKey: .disclaimer)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(deliveryPartnerDetail, forKey: .deliveryPartnerDetail)
            
            
            
            
            try? container.encodeIfPresent(customerBillingDetail, forKey: .customerBillingDetail)
            
            
        }
        
    }
}


