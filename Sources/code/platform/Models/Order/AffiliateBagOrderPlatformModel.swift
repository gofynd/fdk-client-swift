

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var unitPrice: Double

        public var storeId: Int

        public var avlQty: Int

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var quantity: Int

        public var priceEffective: Double

        public var sku: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var discount: Double

        public var id: String

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var itemSize: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case quantity

            case priceEffective = "price_effective"

            case sku

            case identifier

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case discount

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.sku = sku

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.discount = discount

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var unitPrice: Double

        public var storeId: Int

        public var avlQty: Int

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var quantity: Int

        public var priceEffective: Double

        public var sku: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var discount: Double

        public var id: String

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var itemSize: String

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case quantity

            case priceEffective = "price_effective"

            case sku

            case identifier

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case discount

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.sku = sku

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.discount = discount

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
