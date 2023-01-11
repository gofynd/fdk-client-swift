

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var storeId: Int

        public var unitPrice: Double

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var itemId: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var companyId: Int

        public var sku: String

        public var discount: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case quantity

            case identifier

            case companyId = "company_id"

            case sku

            case discount

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.identifier = identifier

            self.companyId = companyId

            self.sku = sku

            self.discount = discount

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
