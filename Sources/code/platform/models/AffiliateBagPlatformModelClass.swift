

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var priceEffective: Double

        public var storeId: Int

        public var identifier: [String: Any]

        public var companyId: Int

        public var avlQty: Int

        public var fyndStoreId: String

        public var amountPaid: Double

        public var sku: String

        public var id: String

        public var itemId: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var discount: Double

        public var itemSize: String

        public var quantity: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case identifier

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case sku

            case id = "_id"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case discount

            case itemSize = "item_size"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.identifier = identifier

            self.companyId = companyId

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.sku = sku

            self.id = id

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.discount = discount

            self.itemSize = itemSize

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
