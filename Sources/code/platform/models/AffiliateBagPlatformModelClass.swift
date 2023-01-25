

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var id: String

        public var modifiedOn: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var avlQty: Int

        public var priceMarked: Double

        public var discount: Double

        public var quantity: Int

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var companyId: Int

        public var sku: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case id = "_id"

            case modifiedOn = "modified_on"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case identifier

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case discount

            case quantity

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case sku

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.id = id

            self.modifiedOn = modifiedOn

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.discount = discount

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.sku = sku

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
