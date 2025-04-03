

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: DummyTemplateDataPayload
        Used By: FileStorage
    */

    class DummyTemplateDataPayload: Codable {
        
        
        public var isExport: Bool?
        
        public var isExportShipment: Bool?
        
        public var appDomainName: String?
        
        public var txnId: String?
        
        public var utr: String?
        
        public var poNumber: String?
        
        public var creditNoteId: String?
        
        public var currentDate: String?
        
        public var totalValueOfGoods: Double?
        
        public var b2BBuyerDetails: [String: Any]?
        
        public var isQwik: [String: Any]?
        
        public var orderType: String?
        
        public var conversionRate: ConversionRate?
        
        public var currencyCode: String?
        
        public var shipmentId: String?
        
        public var deliveryPartnerDetail: DeliveryPartnerDetail?
        
        public var image: Image?
        
        public var payments: [PaymentData]?
        
        public var invoiceDetail: InvoiceDetail?
        
        public var companyDetail: CompanyDetail?
        
        public var storeDetail: StoreDetail?
        
        public var customerBillingDetail: CustomerBillingDetail?
        
        public var customerShippingDetail: CustomerShippingDetail?
        
        public var returnDetail: ReturnDetail?
        
        public var productTable: ProductTable?
        
        public var taxTable: TaxTable?
        
        public var declarationTexts: [String]?
        
        public var registeredCompanyDetail: RegisteredCompanyDetail?
        
        public var disclaimer: String?
        
        public var meta: Meta?
        
        public var isSelfShip: Bool?
        
        public var mode: String?
        
        public var isSelfPickup: Bool?
        
        public var shipmentMeta: [String: Any]?
        
        public var orderMeta: [String: Any]?
        
        public var platformName: String?
        
        public var amountToBeCollected: Double?
        
        public var amountPaid: Double?
        
        public var waybills: [[String: Any]]?
        
        public var totalItems: Double?
        
        public var brandLogo: String?
        
        public var shipmentIdBarcode: String?
        
        public var signedQrcode: String?
        
        public var upiQrcode: String?
        
        public var digitalsignature: String?
        
        public var awbNumberBarcode: String?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isExport = "is_export"
            
            case isExportShipment = "is_export_shipment"
            
            case appDomainName = "app_domain_name"
            
            case txnId = "txn_id"
            
            case utr = "utr"
            
            case poNumber = "po_number"
            
            case creditNoteId = "credit_note_id"
            
            case currentDate = "current_date"
            
            case totalValueOfGoods = "total_value_of_goods"
            
            case b2BBuyerDetails = "b2b_buyer_details"
            
            case isQwik = "is_qwik"
            
            case orderType = "order_type"
            
            case conversionRate = "conversion_rate"
            
            case currencyCode = "currency_code"
            
            case shipmentId = "shipment_id"
            
            case deliveryPartnerDetail = "delivery_partner_detail"
            
            case image = "image"
            
            case payments = "payments"
            
            case invoiceDetail = "invoice_detail"
            
            case companyDetail = "company_detail"
            
            case storeDetail = "store_detail"
            
            case customerBillingDetail = "customer_billing_detail"
            
            case customerShippingDetail = "customer_shipping_detail"
            
            case returnDetail = "return_detail"
            
            case productTable = "product_table"
            
            case taxTable = "tax_table"
            
            case declarationTexts = "declaration_texts"
            
            case registeredCompanyDetail = "registered_company_detail"
            
            case disclaimer = "disclaimer"
            
            case meta = "meta"
            
            case isSelfShip = "is_self_ship"
            
            case mode = "mode"
            
            case isSelfPickup = "is_self_pickup"
            
            case shipmentMeta = "shipment_meta"
            
            case orderMeta = "order_meta"
            
            case platformName = "platform_name"
            
            case amountToBeCollected = "amount_to_be_collected"
            
            case amountPaid = "amount_paid"
            
            case waybills = "waybills"
            
            case totalItems = "total_items"
            
            case brandLogo = "brand_logo"
            
            case shipmentIdBarcode = "shipment_id_barcode"
            
            case signedQrcode = "signed_qrcode"
            
            case upiQrcode = "upi_qrcode"
            
            case digitalsignature = "digitalsignature"
            
            case awbNumberBarcode = "awb_number_barcode"
            
            case uid = "uid"
            
        }

        public init(amountPaid: Double? = nil, amountToBeCollected: Double? = nil, appDomainName: String? = nil, awbNumberBarcode: String? = nil, b2BBuyerDetails: [String: Any]? = nil, brandLogo: String? = nil, companyDetail: CompanyDetail? = nil, conversionRate: ConversionRate? = nil, creditNoteId: String? = nil, currencyCode: String? = nil, currentDate: String? = nil, customerBillingDetail: CustomerBillingDetail? = nil, customerShippingDetail: CustomerShippingDetail? = nil, declarationTexts: [String]? = nil, deliveryPartnerDetail: DeliveryPartnerDetail? = nil, digitalsignature: String? = nil, disclaimer: String? = nil, image: Image? = nil, invoiceDetail: InvoiceDetail? = nil, isExport: Bool? = nil, isExportShipment: Bool? = nil, isQwik: [String: Any]? = nil, isSelfPickup: Bool? = nil, isSelfShip: Bool? = nil, meta: Meta? = nil, mode: String? = nil, orderMeta: [String: Any]? = nil, orderType: String? = nil, payments: [PaymentData]? = nil, platformName: String? = nil, poNumber: String? = nil, productTable: ProductTable? = nil, registeredCompanyDetail: RegisteredCompanyDetail? = nil, returnDetail: ReturnDetail? = nil, shipmentId: String? = nil, shipmentIdBarcode: String? = nil, shipmentMeta: [String: Any]? = nil, signedQrcode: String? = nil, storeDetail: StoreDetail? = nil, taxTable: TaxTable? = nil, totalItems: Double? = nil, totalValueOfGoods: Double? = nil, txnId: String? = nil, uid: String? = nil, upiQrcode: String? = nil, utr: String? = nil, waybills: [[String: Any]]? = nil) {
            
            self.isExport = isExport
            
            self.isExportShipment = isExportShipment
            
            self.appDomainName = appDomainName
            
            self.txnId = txnId
            
            self.utr = utr
            
            self.poNumber = poNumber
            
            self.creditNoteId = creditNoteId
            
            self.currentDate = currentDate
            
            self.totalValueOfGoods = totalValueOfGoods
            
            self.b2BBuyerDetails = b2BBuyerDetails
            
            self.isQwik = isQwik
            
            self.orderType = orderType
            
            self.conversionRate = conversionRate
            
            self.currencyCode = currencyCode
            
            self.shipmentId = shipmentId
            
            self.deliveryPartnerDetail = deliveryPartnerDetail
            
            self.image = image
            
            self.payments = payments
            
            self.invoiceDetail = invoiceDetail
            
            self.companyDetail = companyDetail
            
            self.storeDetail = storeDetail
            
            self.customerBillingDetail = customerBillingDetail
            
            self.customerShippingDetail = customerShippingDetail
            
            self.returnDetail = returnDetail
            
            self.productTable = productTable
            
            self.taxTable = taxTable
            
            self.declarationTexts = declarationTexts
            
            self.registeredCompanyDetail = registeredCompanyDetail
            
            self.disclaimer = disclaimer
            
            self.meta = meta
            
            self.isSelfShip = isSelfShip
            
            self.mode = mode
            
            self.isSelfPickup = isSelfPickup
            
            self.shipmentMeta = shipmentMeta
            
            self.orderMeta = orderMeta
            
            self.platformName = platformName
            
            self.amountToBeCollected = amountToBeCollected
            
            self.amountPaid = amountPaid
            
            self.waybills = waybills
            
            self.totalItems = totalItems
            
            self.brandLogo = brandLogo
            
            self.shipmentIdBarcode = shipmentIdBarcode
            
            self.signedQrcode = signedQrcode
            
            self.upiQrcode = upiQrcode
            
            self.digitalsignature = digitalsignature
            
            self.awbNumberBarcode = awbNumberBarcode
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isExport = try container.decode(Bool.self, forKey: .isExport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isExportShipment = try container.decode(Bool.self, forKey: .isExportShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appDomainName = try container.decode(String.self, forKey: .appDomainName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    txnId = try container.decode(String.self, forKey: .txnId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    utr = try container.decode(String.self, forKey: .utr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poNumber = try container.decode(String.self, forKey: .poNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentDate = try container.decode(String.self, forKey: .currentDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalValueOfGoods = try container.decode(Double.self, forKey: .totalValueOfGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    b2BBuyerDetails = try container.decode([String: Any].self, forKey: .b2BBuyerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isQwik = try container.decode([String: Any].self, forKey: .isQwik)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conversionRate = try container.decode(ConversionRate.self, forKey: .conversionRate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryPartnerDetail = try container.decode(DeliveryPartnerDetail.self, forKey: .deliveryPartnerDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(Image.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([PaymentData].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceDetail = try container.decode(InvoiceDetail.self, forKey: .invoiceDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDetail = try container.decode(CompanyDetail.self, forKey: .companyDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeDetail = try container.decode(StoreDetail.self, forKey: .storeDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerBillingDetail = try container.decode(CustomerBillingDetail.self, forKey: .customerBillingDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerShippingDetail = try container.decode(CustomerShippingDetail.self, forKey: .customerShippingDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnDetail = try container.decode(ReturnDetail.self, forKey: .returnDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productTable = try container.decode(ProductTable.self, forKey: .productTable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxTable = try container.decode(TaxTable.self, forKey: .taxTable)
                
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
                    registeredCompanyDetail = try container.decode(RegisteredCompanyDetail.self, forKey: .registeredCompanyDetail)
                
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
                    meta = try container.decode(Meta.self, forKey: .meta)
                
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
                    mode = try container.decode(String.self, forKey: .mode)
                
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
                    shipmentMeta = try container.decode([String: Any].self, forKey: .shipmentMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderMeta = try container.decode([String: Any].self, forKey: .orderMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformName = try container.decode(String.self, forKey: .platformName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountToBeCollected = try container.decode(Double.self, forKey: .amountToBeCollected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    waybills = try container.decode([[String: Any]].self, forKey: .waybills)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalItems = try container.decode(Double.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandLogo = try container.decode(String.self, forKey: .brandLogo)
                
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
                    signedQrcode = try container.decode(String.self, forKey: .signedQrcode)
                
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
                    digitalsignature = try container.decode(String.self, forKey: .digitalsignature)
                
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
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isExport, forKey: .isExport)
            
            
            
            
            try? container.encodeIfPresent(isExportShipment, forKey: .isExportShipment)
            
            
            
            
            try? container.encodeIfPresent(appDomainName, forKey: .appDomainName)
            
            
            
            
            try? container.encodeIfPresent(txnId, forKey: .txnId)
            
            
            
            
            try? container.encodeIfPresent(utr, forKey: .utr)
            
            
            
            
            try? container.encodeIfPresent(poNumber, forKey: .poNumber)
            
            
            
            
            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(currentDate, forKey: .currentDate)
            
            
            
            
            try? container.encodeIfPresent(totalValueOfGoods, forKey: .totalValueOfGoods)
            
            
            
            
            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)
            
            
            
            
            try? container.encodeIfPresent(isQwik, forKey: .isQwik)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(conversionRate, forKey: .conversionRate)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(deliveryPartnerDetail, forKey: .deliveryPartnerDetail)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(invoiceDetail, forKey: .invoiceDetail)
            
            
            
            
            try? container.encodeIfPresent(companyDetail, forKey: .companyDetail)
            
            
            
            
            try? container.encodeIfPresent(storeDetail, forKey: .storeDetail)
            
            
            
            
            try? container.encodeIfPresent(customerBillingDetail, forKey: .customerBillingDetail)
            
            
            
            
            try? container.encodeIfPresent(customerShippingDetail, forKey: .customerShippingDetail)
            
            
            
            
            try? container.encodeIfPresent(returnDetail, forKey: .returnDetail)
            
            
            
            
            try? container.encodeIfPresent(productTable, forKey: .productTable)
            
            
            
            
            try? container.encodeIfPresent(taxTable, forKey: .taxTable)
            
            
            
            
            try? container.encodeIfPresent(declarationTexts, forKey: .declarationTexts)
            
            
            
            
            try? container.encodeIfPresent(registeredCompanyDetail, forKey: .registeredCompanyDetail)
            
            
            
            
            try? container.encodeIfPresent(disclaimer, forKey: .disclaimer)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(isSelfPickup, forKey: .isSelfPickup)
            
            
            
            
            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)
            
            
            
            
            try? container.encodeIfPresent(orderMeta, forKey: .orderMeta)
            
            
            
            
            try? container.encodeIfPresent(platformName, forKey: .platformName)
            
            
            
            
            try? container.encodeIfPresent(amountToBeCollected, forKey: .amountToBeCollected)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(waybills, forKey: .waybills)
            
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(brandLogo, forKey: .brandLogo)
            
            
            
            
            try? container.encodeIfPresent(shipmentIdBarcode, forKey: .shipmentIdBarcode)
            
            
            
            
            try? container.encodeIfPresent(signedQrcode, forKey: .signedQrcode)
            
            
            
            
            try? container.encodeIfPresent(upiQrcode, forKey: .upiQrcode)
            
            
            
            
            try? container.encodeIfPresent(digitalsignature, forKey: .digitalsignature)
            
            
            
            
            try? container.encodeIfPresent(awbNumberBarcode, forKey: .awbNumberBarcode)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: DummyTemplateDataPayload
        Used By: FileStorage
    */

    class DummyTemplateDataPayload: Codable {
        
        
        public var isExport: Bool?
        
        public var isExportShipment: Bool?
        
        public var appDomainName: String?
        
        public var txnId: String?
        
        public var utr: String?
        
        public var poNumber: String?
        
        public var creditNoteId: String?
        
        public var currentDate: String?
        
        public var totalValueOfGoods: Double?
        
        public var b2BBuyerDetails: [String: Any]?
        
        public var isQwik: [String: Any]?
        
        public var orderType: String?
        
        public var conversionRate: ConversionRate?
        
        public var currencyCode: String?
        
        public var shipmentId: String?
        
        public var deliveryPartnerDetail: DeliveryPartnerDetail?
        
        public var image: Image?
        
        public var payments: [PaymentData]?
        
        public var invoiceDetail: InvoiceDetail?
        
        public var companyDetail: CompanyDetail?
        
        public var storeDetail: StoreDetail?
        
        public var customerBillingDetail: CustomerBillingDetail?
        
        public var customerShippingDetail: CustomerShippingDetail?
        
        public var returnDetail: ReturnDetail?
        
        public var productTable: ProductTable?
        
        public var taxTable: TaxTable?
        
        public var declarationTexts: [String]?
        
        public var registeredCompanyDetail: RegisteredCompanyDetail?
        
        public var disclaimer: String?
        
        public var meta: Meta?
        
        public var isSelfShip: Bool?
        
        public var mode: String?
        
        public var isSelfPickup: Bool?
        
        public var shipmentMeta: [String: Any]?
        
        public var orderMeta: [String: Any]?
        
        public var platformName: String?
        
        public var amountToBeCollected: Double?
        
        public var amountPaid: Double?
        
        public var waybills: [[String: Any]]?
        
        public var totalItems: Double?
        
        public var brandLogo: String?
        
        public var shipmentIdBarcode: String?
        
        public var signedQrcode: String?
        
        public var upiQrcode: String?
        
        public var digitalsignature: String?
        
        public var awbNumberBarcode: String?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isExport = "is_export"
            
            case isExportShipment = "is_export_shipment"
            
            case appDomainName = "app_domain_name"
            
            case txnId = "txn_id"
            
            case utr = "utr"
            
            case poNumber = "po_number"
            
            case creditNoteId = "credit_note_id"
            
            case currentDate = "current_date"
            
            case totalValueOfGoods = "total_value_of_goods"
            
            case b2BBuyerDetails = "b2b_buyer_details"
            
            case isQwik = "is_qwik"
            
            case orderType = "order_type"
            
            case conversionRate = "conversion_rate"
            
            case currencyCode = "currency_code"
            
            case shipmentId = "shipment_id"
            
            case deliveryPartnerDetail = "delivery_partner_detail"
            
            case image = "image"
            
            case payments = "payments"
            
            case invoiceDetail = "invoice_detail"
            
            case companyDetail = "company_detail"
            
            case storeDetail = "store_detail"
            
            case customerBillingDetail = "customer_billing_detail"
            
            case customerShippingDetail = "customer_shipping_detail"
            
            case returnDetail = "return_detail"
            
            case productTable = "product_table"
            
            case taxTable = "tax_table"
            
            case declarationTexts = "declaration_texts"
            
            case registeredCompanyDetail = "registered_company_detail"
            
            case disclaimer = "disclaimer"
            
            case meta = "meta"
            
            case isSelfShip = "is_self_ship"
            
            case mode = "mode"
            
            case isSelfPickup = "is_self_pickup"
            
            case shipmentMeta = "shipment_meta"
            
            case orderMeta = "order_meta"
            
            case platformName = "platform_name"
            
            case amountToBeCollected = "amount_to_be_collected"
            
            case amountPaid = "amount_paid"
            
            case waybills = "waybills"
            
            case totalItems = "total_items"
            
            case brandLogo = "brand_logo"
            
            case shipmentIdBarcode = "shipment_id_barcode"
            
            case signedQrcode = "signed_qrcode"
            
            case upiQrcode = "upi_qrcode"
            
            case digitalsignature = "digitalsignature"
            
            case awbNumberBarcode = "awb_number_barcode"
            
            case uid = "uid"
            
        }

        public init(amountPaid: Double? = nil, amountToBeCollected: Double? = nil, appDomainName: String? = nil, awbNumberBarcode: String? = nil, b2BBuyerDetails: [String: Any]? = nil, brandLogo: String? = nil, companyDetail: CompanyDetail? = nil, conversionRate: ConversionRate? = nil, creditNoteId: String? = nil, currencyCode: String? = nil, currentDate: String? = nil, customerBillingDetail: CustomerBillingDetail? = nil, customerShippingDetail: CustomerShippingDetail? = nil, declarationTexts: [String]? = nil, deliveryPartnerDetail: DeliveryPartnerDetail? = nil, digitalsignature: String? = nil, disclaimer: String? = nil, image: Image? = nil, invoiceDetail: InvoiceDetail? = nil, isExport: Bool? = nil, isExportShipment: Bool? = nil, isQwik: [String: Any]? = nil, isSelfPickup: Bool? = nil, isSelfShip: Bool? = nil, meta: Meta? = nil, mode: String? = nil, orderMeta: [String: Any]? = nil, orderType: String? = nil, payments: [PaymentData]? = nil, platformName: String? = nil, poNumber: String? = nil, productTable: ProductTable? = nil, registeredCompanyDetail: RegisteredCompanyDetail? = nil, returnDetail: ReturnDetail? = nil, shipmentId: String? = nil, shipmentIdBarcode: String? = nil, shipmentMeta: [String: Any]? = nil, signedQrcode: String? = nil, storeDetail: StoreDetail? = nil, taxTable: TaxTable? = nil, totalItems: Double? = nil, totalValueOfGoods: Double? = nil, txnId: String? = nil, uid: String? = nil, upiQrcode: String? = nil, utr: String? = nil, waybills: [[String: Any]]? = nil) {
            
            self.isExport = isExport
            
            self.isExportShipment = isExportShipment
            
            self.appDomainName = appDomainName
            
            self.txnId = txnId
            
            self.utr = utr
            
            self.poNumber = poNumber
            
            self.creditNoteId = creditNoteId
            
            self.currentDate = currentDate
            
            self.totalValueOfGoods = totalValueOfGoods
            
            self.b2BBuyerDetails = b2BBuyerDetails
            
            self.isQwik = isQwik
            
            self.orderType = orderType
            
            self.conversionRate = conversionRate
            
            self.currencyCode = currencyCode
            
            self.shipmentId = shipmentId
            
            self.deliveryPartnerDetail = deliveryPartnerDetail
            
            self.image = image
            
            self.payments = payments
            
            self.invoiceDetail = invoiceDetail
            
            self.companyDetail = companyDetail
            
            self.storeDetail = storeDetail
            
            self.customerBillingDetail = customerBillingDetail
            
            self.customerShippingDetail = customerShippingDetail
            
            self.returnDetail = returnDetail
            
            self.productTable = productTable
            
            self.taxTable = taxTable
            
            self.declarationTexts = declarationTexts
            
            self.registeredCompanyDetail = registeredCompanyDetail
            
            self.disclaimer = disclaimer
            
            self.meta = meta
            
            self.isSelfShip = isSelfShip
            
            self.mode = mode
            
            self.isSelfPickup = isSelfPickup
            
            self.shipmentMeta = shipmentMeta
            
            self.orderMeta = orderMeta
            
            self.platformName = platformName
            
            self.amountToBeCollected = amountToBeCollected
            
            self.amountPaid = amountPaid
            
            self.waybills = waybills
            
            self.totalItems = totalItems
            
            self.brandLogo = brandLogo
            
            self.shipmentIdBarcode = shipmentIdBarcode
            
            self.signedQrcode = signedQrcode
            
            self.upiQrcode = upiQrcode
            
            self.digitalsignature = digitalsignature
            
            self.awbNumberBarcode = awbNumberBarcode
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isExport = try container.decode(Bool.self, forKey: .isExport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isExportShipment = try container.decode(Bool.self, forKey: .isExportShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appDomainName = try container.decode(String.self, forKey: .appDomainName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    txnId = try container.decode(String.self, forKey: .txnId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    utr = try container.decode(String.self, forKey: .utr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    poNumber = try container.decode(String.self, forKey: .poNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentDate = try container.decode(String.self, forKey: .currentDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalValueOfGoods = try container.decode(Double.self, forKey: .totalValueOfGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    b2BBuyerDetails = try container.decode([String: Any].self, forKey: .b2BBuyerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isQwik = try container.decode([String: Any].self, forKey: .isQwik)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conversionRate = try container.decode(ConversionRate.self, forKey: .conversionRate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryPartnerDetail = try container.decode(DeliveryPartnerDetail.self, forKey: .deliveryPartnerDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(Image.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([PaymentData].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceDetail = try container.decode(InvoiceDetail.self, forKey: .invoiceDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDetail = try container.decode(CompanyDetail.self, forKey: .companyDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeDetail = try container.decode(StoreDetail.self, forKey: .storeDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerBillingDetail = try container.decode(CustomerBillingDetail.self, forKey: .customerBillingDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerShippingDetail = try container.decode(CustomerShippingDetail.self, forKey: .customerShippingDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnDetail = try container.decode(ReturnDetail.self, forKey: .returnDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productTable = try container.decode(ProductTable.self, forKey: .productTable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxTable = try container.decode(TaxTable.self, forKey: .taxTable)
                
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
                    registeredCompanyDetail = try container.decode(RegisteredCompanyDetail.self, forKey: .registeredCompanyDetail)
                
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
                    meta = try container.decode(Meta.self, forKey: .meta)
                
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
                    mode = try container.decode(String.self, forKey: .mode)
                
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
                    shipmentMeta = try container.decode([String: Any].self, forKey: .shipmentMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderMeta = try container.decode([String: Any].self, forKey: .orderMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platformName = try container.decode(String.self, forKey: .platformName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountToBeCollected = try container.decode(Double.self, forKey: .amountToBeCollected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    waybills = try container.decode([[String: Any]].self, forKey: .waybills)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalItems = try container.decode(Double.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandLogo = try container.decode(String.self, forKey: .brandLogo)
                
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
                    signedQrcode = try container.decode(String.self, forKey: .signedQrcode)
                
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
                    digitalsignature = try container.decode(String.self, forKey: .digitalsignature)
                
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
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isExport, forKey: .isExport)
            
            
            
            
            try? container.encodeIfPresent(isExportShipment, forKey: .isExportShipment)
            
            
            
            
            try? container.encodeIfPresent(appDomainName, forKey: .appDomainName)
            
            
            
            
            try? container.encodeIfPresent(txnId, forKey: .txnId)
            
            
            
            
            try? container.encodeIfPresent(utr, forKey: .utr)
            
            
            
            
            try? container.encodeIfPresent(poNumber, forKey: .poNumber)
            
            
            
            
            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(currentDate, forKey: .currentDate)
            
            
            
            
            try? container.encodeIfPresent(totalValueOfGoods, forKey: .totalValueOfGoods)
            
            
            
            
            try? container.encodeIfPresent(b2BBuyerDetails, forKey: .b2BBuyerDetails)
            
            
            
            
            try? container.encodeIfPresent(isQwik, forKey: .isQwik)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(conversionRate, forKey: .conversionRate)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(deliveryPartnerDetail, forKey: .deliveryPartnerDetail)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(invoiceDetail, forKey: .invoiceDetail)
            
            
            
            
            try? container.encodeIfPresent(companyDetail, forKey: .companyDetail)
            
            
            
            
            try? container.encodeIfPresent(storeDetail, forKey: .storeDetail)
            
            
            
            
            try? container.encodeIfPresent(customerBillingDetail, forKey: .customerBillingDetail)
            
            
            
            
            try? container.encodeIfPresent(customerShippingDetail, forKey: .customerShippingDetail)
            
            
            
            
            try? container.encodeIfPresent(returnDetail, forKey: .returnDetail)
            
            
            
            
            try? container.encodeIfPresent(productTable, forKey: .productTable)
            
            
            
            
            try? container.encodeIfPresent(taxTable, forKey: .taxTable)
            
            
            
            
            try? container.encodeIfPresent(declarationTexts, forKey: .declarationTexts)
            
            
            
            
            try? container.encodeIfPresent(registeredCompanyDetail, forKey: .registeredCompanyDetail)
            
            
            
            
            try? container.encodeIfPresent(disclaimer, forKey: .disclaimer)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(isSelfPickup, forKey: .isSelfPickup)
            
            
            
            
            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)
            
            
            
            
            try? container.encodeIfPresent(orderMeta, forKey: .orderMeta)
            
            
            
            
            try? container.encodeIfPresent(platformName, forKey: .platformName)
            
            
            
            
            try? container.encodeIfPresent(amountToBeCollected, forKey: .amountToBeCollected)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(waybills, forKey: .waybills)
            
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(brandLogo, forKey: .brandLogo)
            
            
            
            
            try? container.encodeIfPresent(shipmentIdBarcode, forKey: .shipmentIdBarcode)
            
            
            
            
            try? container.encodeIfPresent(signedQrcode, forKey: .signedQrcode)
            
            
            
            
            try? container.encodeIfPresent(upiQrcode, forKey: .upiQrcode)
            
            
            
            
            try? container.encodeIfPresent(digitalsignature, forKey: .digitalsignature)
            
            
            
            
            try? container.encodeIfPresent(awbNumberBarcode, forKey: .awbNumberBarcode)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


