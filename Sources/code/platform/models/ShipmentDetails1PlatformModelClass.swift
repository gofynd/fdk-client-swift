

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var ewayBillId: String?

        public var pdfLinks: PDFLinks

        public var createdAt: Int

        public var affiliateId: String

        public var fulfilmentPriority: Int

        public var storeInvoiceId: String?

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var isActive: Bool

        public var tags: [String]?

        public var lockStatus: String

        public var deliveryAddressJson: DeliveryAddress

        public var fyndOrderId: String

        public var packagingType: String

        public var meta: ShipmentMeta

        public var sdType: String

        public var sId: String

        public var deliveryAwbNumber: String?

        public var previousShipmentId: String?

        public var parentType: String?

        public var affiliateShipmentId: String

        public var billingAddressJson: BillingAddress1

        public var parentId: String?

        public var creditNoteId: String?

        public enum CodingKeys: String, CodingKey {
            case ewayBillId = "eway_bill_id"

            case pdfLinks = "pdf_links"

            case createdAt = "created_at"

            case affiliateId = "affiliate_id"

            case fulfilmentPriority = "fulfilment_priority"

            case storeInvoiceId = "store_invoice_id"

            case handOverContactJson = "hand_over_contact_json"

            case isActive = "is_active"

            case tags

            case lockStatus = "lock_status"

            case deliveryAddressJson = "delivery_address_json"

            case fyndOrderId = "fynd_order_id"

            case packagingType = "packaging_type"

            case meta

            case sdType = "sd_type"

            case sId = "s_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case previousShipmentId = "previous_shipment_id"

            case parentType = "parent_type"

            case affiliateShipmentId = "affiliate_shipment_id"

            case billingAddressJson = "billing_address_json"

            case parentId = "parent_id"

            case creditNoteId = "credit_note_id"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.ewayBillId = ewayBillId

            self.pdfLinks = pdfLinks

            self.createdAt = createdAt

            self.affiliateId = affiliateId

            self.fulfilmentPriority = fulfilmentPriority

            self.storeInvoiceId = storeInvoiceId

            self.handOverContactJson = handOverContactJson

            self.isActive = isActive

            self.tags = tags

            self.lockStatus = lockStatus

            self.deliveryAddressJson = deliveryAddressJson

            self.fyndOrderId = fyndOrderId

            self.packagingType = packagingType

            self.meta = meta

            self.sdType = sdType

            self.sId = sId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.previousShipmentId = previousShipmentId

            self.parentType = parentType

            self.affiliateShipmentId = affiliateShipmentId

            self.billingAddressJson = billingAddressJson

            self.parentId = parentId

            self.creditNoteId = creditNoteId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

            sdType = try container.decode(String.self, forKey: .sdType)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encode(creditNoteId, forKey: .creditNoteId)
        }
    }
}
