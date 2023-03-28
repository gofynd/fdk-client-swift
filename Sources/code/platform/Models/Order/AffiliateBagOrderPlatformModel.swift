

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var companyId: Int

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var id: String

        public var transferPrice: Int

        public var amountPaid: Double

        public var avlQty: Int

        public var itemId: Int

        public var fyndStoreId: String

        public var unitPrice: Double

        public var hsnCodeId: String

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var discount: Double

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var sku: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case identifier

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case sku

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.sku = sku

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var companyId: Int

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var id: String

        public var transferPrice: Int

        public var amountPaid: Double

        public var avlQty: Int

        public var itemId: Int

        public var fyndStoreId: String

        public var unitPrice: Double

        public var hsnCodeId: String

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var discount: Double

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var sku: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case identifier

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case sku

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.sku = sku

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
