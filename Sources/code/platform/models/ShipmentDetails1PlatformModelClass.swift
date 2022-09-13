

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var previousShipmentId: String?

        public var affiliateId: String

        public var affiliateShipmentId: String

        public var deliveryAwbNumber: String?

        public var creditNoteId: String?

        public var parentType: String?

        public var meta: ShipmentMeta

        public var sId: String

        public var pdfLinks: PDFLinks

        public var billingAddressJson: BillingAddress1

        public var lockStatus: String

        public var fyndOrderId: String

        public var createdAt: Int

        public var isActive: Bool

        public var packagingType: String

        public var parentId: String?

        public var sdType: String

        public var deliveryAddressJson: DeliveryAddress

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var tags: [String]?

        public var fulfilmentPriority: Int

        public var ewayBillId: String?

        public var storeInvoiceId: String?

        public enum CodingKeys: String, CodingKey {
            case previousShipmentId = "previous_shipment_id"

            case affiliateId = "affiliate_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case creditNoteId = "credit_note_id"

            case parentType = "parent_type"

            case meta

            case sId = "s_id"

            case pdfLinks = "pdf_links"

            case billingAddressJson = "billing_address_json"

            case lockStatus = "lock_status"

            case fyndOrderId = "fynd_order_id"

            case createdAt = "created_at"

            case isActive = "is_active"

            case packagingType = "packaging_type"

            case parentId = "parent_id"

            case sdType = "sd_type"

            case deliveryAddressJson = "delivery_address_json"

            case handOverContactJson = "hand_over_contact_json"

            case tags

            case fulfilmentPriority = "fulfilment_priority"

            case ewayBillId = "eway_bill_id"

            case storeInvoiceId = "store_invoice_id"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.previousShipmentId = previousShipmentId

            self.affiliateId = affiliateId

            self.affiliateShipmentId = affiliateShipmentId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.creditNoteId = creditNoteId

            self.parentType = parentType

            self.meta = meta

            self.sId = sId

            self.pdfLinks = pdfLinks

            self.billingAddressJson = billingAddressJson

            self.lockStatus = lockStatus

            self.fyndOrderId = fyndOrderId

            self.createdAt = createdAt

            self.isActive = isActive

            self.packagingType = packagingType

            self.parentId = parentId

            self.sdType = sdType

            self.deliveryAddressJson = deliveryAddressJson

            self.handOverContactJson = handOverContactJson

            self.tags = tags

            self.fulfilmentPriority = fulfilmentPriority

            self.ewayBillId = ewayBillId

            self.storeInvoiceId = storeInvoiceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

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

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

            sId = try container.decode(String.self, forKey: .sId)

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sdType = try container.decode(String.self, forKey: .sdType)

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)
        }
    }
}
