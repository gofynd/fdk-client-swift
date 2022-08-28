

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var avlQty: Int

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var hsnCodeId: String

        public var modifiedOn: String

        public var quantity: Int

        public var amountPaid: Double

        public var storeId: Int

        public var itemSize: String

        public var transferPrice: Int

        public var itemId: Int

        public var fyndStoreId: String

        public var id: String

        public var sku: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var companyId: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case discount

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case quantity

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
