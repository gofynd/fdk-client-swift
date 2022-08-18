

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var companyId: Int

        public var amountPaid: Double

        public var discount: Double

        public var sku: String

        public var affiliateStoreId: String

        public var itemSize: String

        public var priceMarked: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var itemId: Int

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var transferPrice: Int

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case discount

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.discount = discount

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.id = id

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
