

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var itemSize: String

        public var discount: Double

        public var id: String

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var sku: String

        public var deliveryCharge: Double

        public var storeId: Int

        public var avlQty: Int

        public var modifiedOn: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case discount

            case id = "_id"

            case priceEffective = "price_effective"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case sku

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.discount = discount

            self.id = id

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var itemSize: String

        public var discount: Double

        public var id: String

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var sku: String

        public var deliveryCharge: Double

        public var storeId: Int

        public var avlQty: Int

        public var modifiedOn: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case discount

            case id = "_id"

            case priceEffective = "price_effective"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case sku

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.discount = discount

            self.id = id

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
