

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var deliveryCharge: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var identifier: [String: Any]

        public var itemId: Int

        public var discount: Double

        public var companyId: Int

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var transferPrice: Int

        public var id: String

        public var unitPrice: Double

        public var sku: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case identifier

            case itemId = "item_id"

            case discount

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case id = "_id"

            case unitPrice = "unit_price"

            case sku

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.identifier = identifier

            self.itemId = itemId

            self.discount = discount

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.id = id

            self.unitPrice = unitPrice

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
